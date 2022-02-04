// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jojocards/models/categories.dart';
import 'package:jojocards/screens/adultspage.dart';
import 'package:jojocards/utils/utils.dart';
import 'package:jojocards/widgets/categorybutton.dart';
import 'package:jojocards/widgets/categorycard.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  // List<Category> categories = Utils.getMockedCategories();
  List<PlaceInfo> items = Util.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Select Pack",
          style: TextStyle(fontSize: 25),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        centerTitle: true,
        backgroundColor: Color(0xFFA9443F),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            tooltip: 'Log out',
            onPressed: () {
              // handle the press
            },
          ),
        ],
      ),
      body: Center(
          child: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext ctx, int index) {
                return CategoryCard(
                    placeInfo: items[index],
                    onCardClick: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => items[index].route),
                      );
                    });
              },
            ))
          ],
        ),
      ])),
    );
  }
}
