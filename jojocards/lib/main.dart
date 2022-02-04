import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jojocards/repository/auth_repo.dart';
import 'package:jojocards/screens/home_page.dart';
import 'package:jojocards/screens/sign_up.dart';
import 'package:jojocards/screens/welcome_screen.dart';
import 'package:jojocards/widgets/categorybutton.dart';

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

  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  checkLogin() async {
    String token = await authClass.getToken();
    print(token);
    if (token != null) {
      setState(() {
        currentPage = CategoryButtonBar();
      });
    } else {
      setState(() {
        currentPage =  SplashView();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Calibri'),
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          child: currentPage
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
