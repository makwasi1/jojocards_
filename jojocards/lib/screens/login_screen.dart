import 'package:flutter/material.dart';
import 'package:jojocards/repository/auth_repo.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  AuthClass authClass = AuthClass();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Login"),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)
          ),
      ),
      body: Stack(
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
                    obscureText: true,
                    controller: _password,
                    decoration: const InputDecoration(
                        labelText: "Password"),
                  ),
                ),

              ],
            ),
          ),

          ///Button
          Positioned(
            bottom: 0,
            child: GestureDetector(
              onTap: () {
                final email = _email.text;
                final password = _password.text;


                if (email.isEmpty ||
                    password.isEmpty
                 ) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text("Field are empty")));
                } else {
                  ///Flutterwave Payment
                  authClass.signUp(email, password,context);
                }
              },
              child: Container(
                padding: const EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                color: Colors.lightBlue,
                child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly,
                    children: const [
                      ///Icon
                      Icon(Icons.arrow_forward),

                      Text(
                        "Register",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
