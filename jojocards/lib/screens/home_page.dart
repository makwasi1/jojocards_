// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutterwave/flutterwave.dart';
import 'package:flutterwave/models/responses/charge_response.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jojocards/bloc/card_bloc/card_bloc.dart';
import 'package:jojocards/bloc/filtered_cards/card_filter_bloc.dart';
import 'package:jojocards/models/categories.dart';
import 'package:jojocards/models/filtered_category.dart';
import 'package:jojocards/repository/auth_repo.dart';
import 'package:jojocards/screens/adultspage.dart';
import 'package:jojocards/screens/boyspage.dart';
import 'package:jojocards/screens/couplespage.dart';
import 'package:jojocards/screens/favoritepage.dart';
import 'package:jojocards/screens/girlspage.dart';
import 'package:jojocards/screens/kidspage.dart';
import 'package:jojocards/screens/payment_page.dart';
import 'package:jojocards/screens/settingpage.dart';
import 'package:jojocards/screens/squadpage.dart';
import 'package:jojocards/screens/welcome_screen.dart';
import 'package:jojocards/utils/utils.dart';
import 'package:jojocards/widgets/categorybutton.dart';
import 'package:jojocards/widgets/categorycard.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pay/pay.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _amount = TextEditingController();
  final TextEditingController _phone = TextEditingController();

  final List<Tab> myTabs = <Tab>[
    Tab(icon: Icon(Icons.pending)),
    Tab(icon: Icon(Icons.favorite)),
  ];

  String _ref;
  PlaceInfo cards;
  TabController tabController;

  List<PlaceInfo> list = new List<PlaceInfo>();
  SharedPreferences sharedPreferences;

  void setRef() {
    Random rand = Random();
    int number = rand.nextInt(2000);

    if (Platform.isAndroid) {
      setState(() {
        _ref = "AndroidRef1789$number";
      });
    } else {
      setState(() {
        _ref = "IOSRef1789$number";
      });
    }
  }

  @override
  void initState() {
    setRef();
    loadSharedPreferencesAndData();
    super.initState();
    tabController = TabController(vsync: this, length: myTabs.length);
  }

  void loadSharedPreferencesAndData() async {
    sharedPreferences = await SharedPreferences.getInstance();
    loadData();
  }

  static const _paymentItems = [
    PaymentItem(
      label: 'Total',
      amount: '99.99',
      status: PaymentItemStatus.final_price,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Select Pack",
              style: TextStyle(fontSize: 25),
            ),
            centerTitle: true,
            backgroundColor: Color(0xFFA9443F),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.exit_to_app_rounded),
                tooltip: 'profile',
                onPressed: () {
                  AuthClass().signOut();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SplashView()));
                },
              ),
            ],
            bottom: TabBar(
              controller: tabController,
              tabs: myTabs,
            ),
          ),
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            controller: tabController,
            children: [
              _cards("Selected Packs"),
              _cards2(context),
            ],
          )),
    );
  }

  _cards2(BuildContext context) {
    return Scaffold(
      body: list.isEmpty ? emptyList() : buildListView(context),
    );
  }

  Widget emptyList() {
    return Center(child: Text('No items'));
  }

// buildItem(list[index], index);
  Widget buildListView(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return buildItem(list[index], index, context);
        // CategoryCard(
        //   placeInfo: list[index],
        //   onCardClick: () {
        //     showDialog(
        //         context: context,
        //         builder: (BuildContext context) {
        //           return CustomDialogBox(
        //             title: "How the Game is Played:",
        //             descriptions:
        //                 "1. Pick a card from the deck and ask the player which option they go for “truth” or “dare”. \n 2.Read the question incase the player chooses “truth”. \n 3.Read the dare incase the player chooses “dare”. After the player is done,all participants of the game can share their answers/opinions on the questions if they want to. \n A player is allowed to pass the dare if its not applicable to them and get another question or dare. ",
        //             onClick: () {
        //               Navigator.push(
        //                   context,
        //                   MaterialPageRoute(
        //                     builder: (context) => list[index].route,
        //                   ));
        //             },
        //           );
        //         });
        //   },
        // );
      },
    );
  }

  BlocBuilder<CardFilterBloc, CardFilterState> _cards(String title) {
    void onGooglePayResult(paymentResult) {
      debugPrint(paymentResult.toString());
    }

    return BlocBuilder<CardFilterBloc, CardFilterState>(
      builder: (context, state) {
        if (state is CardFilterLoading) {
          return CircularProgressIndicator();
        }
        if (state is CardFilterLoaded) {
          return Center(
              child: Stack(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: ListView.builder(
                  itemCount: state.filterCards.length,
                  itemBuilder: (BuildContext ctx, int index) {
                    return CategoryCard(
                        placeInfo: state.filterCards[index],
                        onCardClick: () {
                          setRef();
                          if (title == 'Selected Packs') {
                            _launchURL();
                            // showDialog(
                            //     context: context,
                            //     builder: (BuildContext context) {
                            //       return GooglePayButton(
                            //         paymentConfigurationAsset:
                            //             'gpay.json',
                            //         paymentItems: _paymentItems,
                            //         style: GooglePayButtonStyle.black,
                            //         type: GooglePayButtonType.pay,
                            //         margin: const EdgeInsets.only(top: 15.0),
                            //         onPaymentResult: onGooglePayResult,
                            //         loadingIndicator: const Center(
                            //           child: CircularProgressIndicator(),
                            //         ),
                            //       );
                            // return AlertDialog(
                            //   scrollable: true,
                            //   title: Text('Process Payment'),
                            //   content: Padding(
                            //     padding: const EdgeInsets.all(8.0),
                            //     child: Stack(
                            //       children: <Widget>[
                            //         Padding(
                            //           padding: const EdgeInsets.all(10.0),
                            //           child: Column(
                            //             children: [
                            //               Container(
                            //                 margin: const EdgeInsets.only(
                            //                     bottom: 10),
                            //                 child: TextFormField(
                            //                   controller: _email,
                            //                   decoration:
                            //                       const InputDecoration(
                            //                           labelText: "Email"),
                            //                 ),
                            //               ),
                            //               Container(
                            //                 margin: const EdgeInsets.only(
                            //                     bottom: 10),
                            //                 child: TextFormField(
                            //                   controller: _phone,
                            //                   decoration:
                            //                       const InputDecoration(
                            //                           labelText:
                            //                               "Phone Number"),
                            //                 ),
                            //               ),
                            //               Container(
                            //                 margin: const EdgeInsets.only(
                            //                     bottom: 10),
                            //                 child: TextFormField(
                            //                   controller: _amount,
                            //                   decoration:
                            //                       const InputDecoration(
                            //                           labelText:
                            //                               "Amount"),
                            //                 ),
                            //               )
                            //             ],
                            //           ),
                            //         ),

                            //         // Container(
                            //         //   margin:
                            //         //       const EdgeInsets.only(bottom: 10),
                            //         //   child: TextFormField(
                            //         //     controller: _amount,
                            //         //     decoration: const InputDecoration(
                            //         //         labelText: "Amount"),
                            //         //   ),
                            //         // ),
                            //         Positioned(
                            //           bottom: 0,
                            //           child: GestureDetector(
                            //             onTap: () {
                            //               final email = _email.text;
                            //               final phone = _phone.text;

                            //               if (email.isEmpty ||
                            //                   phone.isEmpty) {
                            //                 ScaffoldMessenger.of(context)
                            //                     .showSnackBar(const SnackBar(
                            //                         content: Text(
                            //                             "Field are empty")));
                            //               } else {
                            //                 ///Flutterwave Payment
                            //                 _makePayment(
                            //                   context,
                            //                   email.trim(),
                            //                   phone.trim(),
                            //                   state.filterCards[index],
                            //                 );
                            //               }
                            //             },
                            //             child: Container(
                            //               padding:
                            //                   const EdgeInsets.all(20),
                            //               width: MediaQuery.of(context)
                            //                   .size
                            //                   .width,
                            //               color: Colors.lightBlue,
                            //               child: Row(
                            //                   mainAxisAlignment:
                            //                       MainAxisAlignment.start,
                            //                   children: const [
                            //                     ///Icon
                            //                     Icon(Icons.payment),

                            //                     Text(
                            //                       "  Make Payment",
                            //                       style: TextStyle(
                            //                           fontSize: 20,
                            //                           fontWeight:
                            //                               FontWeight
                            //                                   .bold),
                            //                       textAlign:
                            //                           TextAlign.left,
                            //                     ),
                            //                   ]),
                            //             ),
                            //           ),
                            //         )
                            //       ],
                            //     ),
                            //   ),
                            // );
                            // });
                            // showDialog(
                            //     context: context,
                            //     builder: (BuildContext context) {
                            //       return AlertDialog(
                            //         scrollable: true,
                            //         title: Text('Process Payment'),
                            //         content: Padding(
                            //           padding: const EdgeInsets.all(8.0),
                            //           child: Stack(
                            //             children: <Widget>[
                            //               Padding(
                            //                 padding: const EdgeInsets.all(10.0),
                            //                 child: Column(
                            //                   children: [
                            //                     Container(
                            //                       margin: const EdgeInsets.only(
                            //                           bottom: 10),
                            //                       child: TextFormField(
                            //                         controller: _email,
                            //                         decoration:
                            //                             const InputDecoration(
                            //                                 labelText: "Email"),
                            //                       ),
                            //                     ),
                            //                     Container(
                            //                       margin: const EdgeInsets.only(
                            //                           bottom: 10),
                            //                       child: TextFormField(
                            //                         controller: _phone,
                            //                         decoration:
                            //                             const InputDecoration(
                            //                                 labelText:
                            //                                     "Phone Number"),
                            //                       ),
                            //                     ),
                            //                     Container(
                            //                       margin: const EdgeInsets.only(
                            //                           bottom: 10),
                            //                       child: TextFormField(
                            //                         controller: _amount,
                            //                         decoration:
                            //                             const InputDecoration(
                            //                                 labelText:
                            //                                     "Amount"),
                            //                       ),
                            //                     )
                            //                   ],
                            //                 ),
                            //               ),

                            //               // Container(
                            //               //   margin:
                            //               //       const EdgeInsets.only(bottom: 10),
                            //               //   child: TextFormField(
                            //               //     controller: _amount,
                            //               //     decoration: const InputDecoration(
                            //               //         labelText: "Amount"),
                            //               //   ),
                            //               // ),
                            //               Positioned(
                            //                 bottom: 0,
                            //                 child: GestureDetector(
                            //                   onTap: () {
                            //                     final email = _email.text;
                            //                     final phone = _phone.text;

                            //                     if (email.isEmpty ||
                            //                         phone.isEmpty) {
                            //                       ScaffoldMessenger.of(context)
                            //                           .showSnackBar(const SnackBar(
                            //                               content: Text(
                            //                                   "Field are empty")));
                            //                     } else {
                            //                       ///Flutterwave Payment
                            //                       _makePayment(
                            //                         context,
                            //                         email.trim(),
                            //                         phone.trim(),
                            //                         state.filterCards[index],
                            //                       );
                            //                     }
                            //                   },
                            //                   child: Container(
                            //                     padding:
                            //                         const EdgeInsets.all(20),
                            //                     width: MediaQuery.of(context)
                            //                         .size
                            //                         .width,
                            //                     color: Colors.lightBlue,
                            //                     child: Row(
                            //                         mainAxisAlignment:
                            //                             MainAxisAlignment.start,
                            //                         children: const [
                            //                           ///Icon
                            //                           Icon(Icons.payment),

                            //                           Text(
                            //                             "  Make Payment",
                            //                             style: TextStyle(
                            //                                 fontSize: 20,
                            //                                 fontWeight:
                            //                                     FontWeight
                            //                                         .bold),
                            //                             textAlign:
                            //                                 TextAlign.left,
                            //                           ),
                            //                         ]),
                            //                   ),
                            //                 ),
                            //               )
                            //             ],
                            //           ),
                            //         ),
                            //       );
                            //     });
                          }
                          // if (title == 'Selected Packs') {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (_) => BlocProvider.value(
                          //               value: BlocProvider.of<CardBloc>(
                          //                   context)
                          //                 ..add(UpdateCard(
                          //                     card: state.filterCards[index])),
                          //               child: PaymentPage(
                          //                 cards: state.filterCards[index],
                          //               ))));
                          // }
                          else {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return CustomDialogBox(
                                    title: "How the Game is Played:",
                                    descriptions:
                                        "1. Pick a card from the deck and ask the player which option they go for “truth” or “dare”. \n 2.Read the question incase the player chooses “truth”. \n 3.Read the dare incase the player chooses “dare”. After the player is done,all participants of the game can share their answers/opinions on the questions if they want to. \n A player is allowed to pass the dare if its not applicable to them and get another question or dare. ",
                                    onClick: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                state.filterCards[index].route,
                                          ));
                                    },
                                  );
                                });
                          }

                          // context.read<CardBloc>()
                          //   .add(UpdateCard(
                          //     card: state.filterCards[index].copyWith(isCompleted: true),
                          //   ));
                          // // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => PaymentPage()),
                          // );
                        });
                  },
                ))
              ],
            ),
          ]));
        } else {
          return Text("Failed To load....");
        }
      },
    );
  }

  _launchURL() async {
    const url = 'https://flutter.io';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _makePayment(
      BuildContext context, String email, String phone, PlaceInfo cards) async {
    try {
      Flutterwave flutterwave = Flutterwave.forUIPayment(
        context: this.context,
        publicKey: "FLWPUBK-77e82baefb89c52adda7c6e46e015abb-X",
        encryptionKey: "a808d1584c915b150012a9e7",
        currency: "UGX",
        amount: '30000',
        email: email,
        acceptCardPayment: true,
        acceptUSSDPayment: true,
        fullName: email,
        txRef: _ref,
        isDebugMode: false,
        phoneNumber: phone,
      );

      final ChargeResponse response =
          await flutterwave.initializeForUiPayments();

      if (response == null) {
        print("Transaction Failed");
      } else {
        ///
        if (response.status == "success") {
          Navigator.pop(context);
          tabController.animateTo((tabController.index + 1) % 2);

          addItem(cards);
        } else {
          print(response.message);
        }
      }
    } catch (error) {
      print(error);
    }
  }

  void addItem(PlaceInfo item) {
    // Insert an item into the top of our list, on index zero
    list.insert(0, item);
    saveData();
  }

  void loadData() {
    List<String> listString = sharedPreferences.getStringList('list-1');
    if (listString != null) {
      list = listString
          .map((item) => PlaceInfo.fromMap(json.decode(item)))
          .toList();
      setState(() {});
    }
  }

  void saveData() {
    List<String> stringList =
        list.map((item) => json.encode(item.toMap())).toList();

    sharedPreferences.setStringList('list-1', stringList);
  }
}

Widget buildItem(PlaceInfo list, int index, BuildContext context) {
  return Dismissible(
    key: Key('${list.hashCode}'),
    background: Container(color: Colors.red[700]),
    onDismissed: (direction) => removeItem(list),
    direction: DismissDirection.startToEnd,
    child: buildListTile(list, index, context),
  );
}

Widget buildListTile(PlaceInfo item, int index, BuildContext context) {
  const double _borderRadius = 24;
  if (item.id == '1') {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return CustomDialogBox(
                title: "How the Game is Played:",
                descriptions:
                    "1. Pick a card from the deck and ask the player which option they go for “truth” or “dare”. \n 2.Read the question incase the player chooses “truth”. \n 3.Read the dare incase the player chooses “dare”. After the player is done,all participants of the game can share their answers/opinions on the questions if they want to. \n A player is allowed to pass the dare if its not applicable to them and get another question or dare. ",
                onClick: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BoysPage()));
                },
              );
            });
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 120,
        child: Stack(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(_borderRadius),
                gradient: LinearGradient(
                    colors: [Color(0xff0320FF), Color(0xff73A1F9)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xff73A1F9),
                    blurRadius: 12,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              top: 0,
              child: CustomPaint(
                size: Size(100, 150),
                painter: CustomCardShapePainter(
                    _borderRadius, Color(0xff0320FF), Color(0xff73A1F9)),
              ),
            ),
            Positioned.fill(
              child: Row(
                children: <Widget>[
                  // Expanded(
                  //   child: Image.asset(
                  //     'assets/icon.png',
                  //     height: 64,
                  //     width: 64,
                  //   ),
                  //   flex: 2,
                  // ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          item.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Calibri',
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          item.category,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Calibri',
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.lock_open,
                              color: Colors.white,
                              size: 16,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Flexible(
                              child: Text(
                                item.location,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Calibri',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          item.rating.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Calibri',
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        // RatingBar(rating: items[index].rating),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  if (item.id == '2') {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return CustomDialogBox(
                title: "How the Game is Played:",
                descriptions:
                    "1. Pick a card from the deck and ask the player which option they go for “truth” or “dare”. \n 2.Read the question incase the player chooses “truth”. \n 3.Read the dare incase the player chooses “dare”. After the player is done,all participants of the game can share their answers/opinions on the questions if they want to. \n A player is allowed to pass the dare if its not applicable to them and get another question or dare. ",
                onClick: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => KidsPage()));
                },
              );
            });
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 120,
        child: Stack(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(_borderRadius),
                gradient: LinearGradient(
                    colors: [Color(0xffFFA70F), Color(0xffFFA057)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xffFFA057),
                    blurRadius: 12,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              top: 0,
              child: CustomPaint(
                size: Size(100, 150),
                painter: CustomCardShapePainter(
                    _borderRadius, Color(0xffFFA70F), Color(0xffFFA057)),
              ),
            ),
            Positioned.fill(
              child: Row(
                children: <Widget>[
                  // Expanded(
                  //   child: Image.asset(
                  //     'assets/icon.png',
                  //     height: 64,
                  //     width: 64,
                  //   ),
                  //   flex: 2,
                  // ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          item.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Calibri',
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          item.category,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Calibri',
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.lock_open,
                              color: Colors.white,
                              size: 16,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Flexible(
                              child: Text(
                                item.location,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Calibri',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          item.rating.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Calibri',
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        // RatingBar(rating: items[index].rating),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  if (item.id == '4') {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return CustomDialogBox(
                title: "How the Game is Played:",
                descriptions:
                    "1. Pick a card from the deck and ask the player which option they go for “truth” or “dare”. \n 2.Read the question incase the player chooses “truth”. \n 3.Read the dare incase the player chooses “dare”. After the player is done,all participants of the game can share their answers/opinions on the questions if they want to. \n A player is allowed to pass the dare if its not applicable to them and get another question or dare. ",
                onClick: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CouplesPage()));
                },
              );
            });
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 120,
        child: Stack(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(_borderRadius),
                gradient: LinearGradient(
                    colors: const [Color(0xffEC3106), Color(0xffEC3106)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xffEC3106),
                    blurRadius: 12,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              top: 0,
              child: CustomPaint(
                size: Size(100, 150),
                painter: CustomCardShapePainter(
                    _borderRadius, Color(0xffEC3106), Color(0xffEC3106)),
              ),
            ),
            Positioned.fill(
              child: Row(
                children: <Widget>[
                  // Expanded(
                  //   child: Image.asset(
                  //     'assets/icon.png',
                  //     height: 64,
                  //     width: 64,
                  //   ),
                  //   flex: 2,
                  // ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          item.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Calibri',
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          item.category,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Calibri',
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.lock_open,
                              color: Colors.white,
                              size: 16,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Flexible(
                              child: Text(
                                item.location,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Calibri',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          item.rating.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Calibri',
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        // RatingBar(rating: items[index].rating),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  if (item.id == '3') {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return CustomDialogBox(
                title: "How the Game is Played:",
                descriptions:
                    "1. Pick a card from the deck and ask the player which option they go for “truth” or “dare”. \n 2.Read the question incase the player chooses “truth”. \n 3.Read the dare incase the player chooses “dare”. After the player is done,all participants of the game can share their answers/opinions on the questions if they want to. \n A player is allowed to pass the dare if its not applicable to them and get another question or dare. ",
                onClick: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GilrsPage()));
                },
              );
            });
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 120,
        child: Stack(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(_borderRadius),
                gradient: LinearGradient(
                    colors: const [Color(0xffEC31B7), Color(0xffF8556D)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xffF8556D),
                    blurRadius: 12,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              top: 0,
              child: CustomPaint(
                size: Size(100, 150),
                painter: CustomCardShapePainter(
                    _borderRadius, Color(0xffEC31B7), Color(0xffF8556D)),
              ),
            ),
            Positioned.fill(
              child: Row(
                children: <Widget>[
                  // Expanded(
                  //   child: Image.asset(
                  //     'assets/icon.png',
                  //     height: 64,
                  //     width: 64,
                  //   ),
                  //   flex: 2,
                  // ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          item.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Calibri',
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          item.category,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Calibri',
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.lock_open,
                              color: Colors.white,
                              size: 16,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Flexible(
                              child: Text(
                                item.location,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Calibri',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          item.rating.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Calibri',
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        // RatingBar(rating: items[index].rating),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  if (item.id == '5') {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return CustomDialogBox(
                title: "How the Game is Played:",
                descriptions:
                    "1. Pick a card from the deck and ask the player which option they go for “truth” or “dare”. \n 2.Read the question incase the player chooses “truth”. \n 3.Read the dare incase the player chooses “dare”. After the player is done,all participants of the game can share their answers/opinions on the questions if they want to. \n A player is allowed to pass the dare if its not applicable to them and get another question or dare. ",
                onClick: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SquadPage()));
                },
              );
            });
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 120,
        child: Stack(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(_borderRadius),
                gradient: LinearGradient(colors: const [
                  Color(0xff090A36),
                  Color.fromRGBO(0, 0, 128, 100)
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 128, 100),
                    blurRadius: 12,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              top: 0,
              child: CustomPaint(
                size: Size(100, 150),
                painter: CustomCardShapePainter(_borderRadius,
                    Color(0xff090A36), Color.fromRGBO(0, 0, 128, 100)),
              ),
            ),
            Positioned.fill(
              child: Row(
                children: <Widget>[
                  // Expanded(
                  //   child: Image.asset(
                  //     'assets/icon.png',
                  //     height: 64,
                  //     width: 64,
                  //   ),
                  //   flex: 2,
                  // ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          item.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Calibri',
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          item.category,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Calibri',
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.lock_open,
                              color: Colors.white,
                              size: 16,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Flexible(
                              child: Text(
                                item.location,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Calibri',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          item.rating.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Calibri',
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        // RatingBar(rating: items[index].rating),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  if (item.id == '6') {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return CustomDialogBox(
                title: "How the Game is Played:",
                descriptions:
                    "1. Pick a card from the deck and ask the player which option they go for “truth” or “dare”. \n 2.Read the question incase the player chooses “truth”. \n 3.Read the dare incase the player chooses “dare”. After the player is done,all participants of the game can share their answers/opinions on the questions if they want to. \n A player is allowed to pass the dare if its not applicable to them and get another question or dare. ",
                onClick: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AdultsPage()));
                },
              );
            });
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 120,
        child: Stack(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(_borderRadius),
                gradient: LinearGradient(
                    colors: const [Color(0xff000000), Color(0xff2C2A30)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xff2C2A30),
                    blurRadius: 12,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              top: 0,
              child: CustomPaint(
                size: Size(100, 150),
                painter: CustomCardShapePainter(
                    _borderRadius, Color(0xff000000), Color(0xff2C2A30)),
              ),
            ),
            Positioned.fill(
              child: Row(
                children: <Widget>[
                  // Expanded(
                  //   child: Image.asset(
                  //     'assets/icon.png',
                  //     height: 64,
                  //     width: 64,
                  //   ),
                  //   flex: 2,
                  // ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          item.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Calibri',
                              fontSize: 24,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          item.category,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Calibri',
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.lock_open,
                              color: Colors.white,
                              size: 16,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Flexible(
                              child: Text(
                                item.location,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Calibri',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          item.rating.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Calibri',
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        // RatingBar(rating: items[index].rating),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

removeItem(item) {}
