import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jojocards/repository/auth_repo.dart';
import 'package:jojocards/screens/adultspage.dart';
import 'package:jojocards/screens/boyspage.dart';
import 'package:jojocards/screens/couplespage.dart';
import 'package:jojocards/screens/girlspage.dart';
import 'package:jojocards/screens/home_page.dart';
import 'package:jojocards/screens/kidspage.dart';
import 'package:jojocards/screens/ratings_page.dart';
import 'package:jojocards/screens/sign_up.dart';
import 'package:jojocards/screens/squadpage.dart';
import 'package:jojocards/screens/welcome_screen.dart';
import 'package:jojocards/widgets/categorybutton.dart';

import 'bloc/card_bloc/card_bloc.dart';
import 'bloc/filtered_cards/card_filter_bloc.dart';
import 'models/categories.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AuthClass authClass = AuthClass();
  Widget currentPage = SplashView();
  final RatingService _ratingService = RatingService();
  @override
  void initState() {
    super.initState();
    checkLogin();

    Timer(const Duration(seconds: 2), () {
      _ratingService.isSecondTimeOpen().then((secondOpen) {
        if (secondOpen) {
          _ratingService.showRating();
        }
      });
    });
  }

  checkLogin() async {
    String token = await authClass.getToken();
    print(token);
    if (token != null) {
      setState(() {
        currentPage = const HomePage();
      });
    } else {
      setState(() {
        currentPage =  const SplashView();
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CardBloc()..add(LoadCard(
          cards: [

              PlaceInfo(id: '1',name: 'Boys',startColor: Color(0xff0320FF), endColor: Color(0xff73A1F9), rating:"Ugx 30,000", location: " ",
                  category: 'Cosy · Casual · Good for boys', route: BoysPage()),
              PlaceInfo(id:'2',name: 'Kids', startColor: Color(0xffFFA70F), endColor: Color(0xffFFA057), rating: "Ugx 30,000", location: '',
                  category: 'Casual · Good for kids', route: KidsPage()),
              PlaceInfo(id: '3',name:'Girls', startColor: Color(0xffEC31B7), endColor: Color(0xffF8556D), rating:"Ugx 30,000", location:'',
                  category:'Casual · Good for girls',  route: GilrsPage()),
              PlaceInfo(id: '4',name: 'Couples', startColor: Color(0xffEC3106), endColor:Color(0xffEC3106),
                  rating:"Ugx 30,000",  location:'', category:'Intimate · Good for couples', route:CouplesPage()),
              PlaceInfo(id:'5',name: 'Squad',  startColor:Color(0xff090A36), endColor: Color.fromRGBO(0, 0, 128,100),
                  rating: "Ugx 30,000", location:'', category:'Have fun with your squad',  route:SquadPage()),
              PlaceInfo(id:'6',name:'Adults', startColor:Color(0xff000000), endColor:Color(0xff2C2A30), rating:"Ugx 30,000", location:'',
                  category:'Only adults', route: AdultsPage()),
          ]
        ))),
        BlocProvider(create: (context) => CardFilterBloc(
          cardBloc: BlocProvider.of<CardBloc>(context),
        ))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Calibri'),
        home: Scaffold(
          body: currentPage
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key key}) : super(key: key);

//   @override

//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Padding(
//           padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
//           child: SplashView(),
//         ),
//       ),
//     );
//   }
// }
