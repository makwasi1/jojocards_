// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:math';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutterwave/flutterwave.dart';
import 'package:flutterwave/models/responses/charge_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jojocards/bloc/card_bloc/card_bloc.dart';
import 'package:jojocards/bloc/filtered_cards/card_filter_bloc.dart';
import 'package:jojocards/models/categories.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key key, this.cards}) : super(key: key);
  final PlaceInfo cards;

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _amount = TextEditingController();
  final TextEditingController _phone = TextEditingController();

  String _ref;
  PlaceInfo cards;

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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CardFilterBloc, CardFilterState>(
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(title: const Text("Checkout Page"),),
            body: BlocBuilder<CardFilterBloc, CardFilterState>(
              // ignore: missing_return
              builder: (context, state) {
                if (state is CardFilterLoaded) {
                  return Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              child: TextFormField(
                                controller: _email,
                                decoration:
                                    const InputDecoration(labelText: "Email"),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              child: TextFormField(
                                controller: _phone,
                                decoration: const InputDecoration(
                                    labelText: "Phone Number"),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(bottom: 10),
                              child: TextFormField(
                                controller: _amount,
                                decoration:
                                    const InputDecoration(labelText: "Amount"),
                              ),
                            )
                          ],
                        ),
                      ),

                      ///Button
                      Positioned(
                        bottom: 0,
                        child: GestureDetector(
                          onTap: () {
                            final email = _email.text;
                            final amount = _amount.text;
                            final phone = _phone.text;

                            if (email.isEmpty ||
                                amount.isEmpty ||
                                phone.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text("Field are empty")));
                            } else {
                              ///Flutterwave Payment
                              _makePayment(
                                context,
                                0,
                                email.trim(),
                                amount.trim(),
                                phone.trim(),
                                state.filterCards,
                              );
                            }
                          },
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            width: MediaQuery.of(context).size.width,
                            color: Colors.lightBlue,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ///Icon
                                  const Icon(Icons.payment),

                                  const Text(
                                    "Make Payment",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ]),
                          ),
                        ),
                      )
                    ],
                  );
                }
              },
            ));
      },
    );
  }

  _makePayment(BuildContext context, int index, String email, String amount,
      String phone, List<PlaceInfo> cards) async {
    try {
      Flutterwave flutterwave = Flutterwave.forUIPayment(
        context: this.context,
        publicKey: "FLWPUBK_TEST-17d7af6e9da379a0c6ab45090fcaffb3-X",
        encryptionKey: "FLWSECK_TEST32d6d1abe8e3",
        currency: "UGX",
        amount: amount,
        email: email,
        acceptCardPayment: true,
        acceptUSSDPayment: true,
        fullName: email,
        txRef: _ref,
        isDebugMode: true,
        phoneNumber: phone,
      );

      final ChargeResponse response =
          await flutterwave.initializeForUiPayments();

      if (response == null) {
        print("Transaction Failed");
      } else {
        ///
        if (response.status == "success") {
          context.read<CardBloc>().add(UpdateCard(
                card: cards[index].copyWith(isCompleted: true),
              ));
          Navigator.pop(context);
          print(response.data);
          print(response.message);
        } else {
          print(response.message);
        }
      }
    } catch (error) {
      print(error);
    }
  }
}
