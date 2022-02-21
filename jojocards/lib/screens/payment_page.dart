// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:math';
import 'dart:io';


import 'package:flutter/material.dart';
import 'package:flutterwave/flutterwave.dart';
import 'package:flutterwave/models/responses/charge_response.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({ Key key }) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _amount = TextEditingController();
  final TextEditingController _phone = TextEditingController();

  String _ref;

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
    return Scaffold(
        appBar: AppBar(title: Text("Checkout Page")),
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
                      decoration: InputDecoration(labelText: "Email"),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: TextFormField(
                      controller: _phone,
                      decoration: InputDecoration(labelText: "Phone Number"),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: TextFormField(
                      controller: _amount,
                      decoration: InputDecoration(labelText: "Amount"),
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

                  if (email.isEmpty || amount.isEmpty || phone.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Field are empty")));
                  } else {
                    ///Flutterwave Payment
                    _makePayment(
                        context, email.trim(), amount.trim(), phone.trim());
                  }
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  color: Colors.lightBlue,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ///Icon
                        Icon(Icons.payment),

                        const Text(
                          "Make Payment",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ]),
                ),
              ),
            )
          ],
        ));
  }

  void _makePayment(
      BuildContext context, String email, String amount, String phone) async {
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