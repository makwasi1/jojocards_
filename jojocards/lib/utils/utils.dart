// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jojocards/models/categories.dart';
import 'package:jojocards/screens/adultspage.dart';
import 'package:jojocards/screens/boyspage.dart';
import 'package:jojocards/screens/couplespage.dart';
import 'package:jojocards/screens/girlspage.dart';
import 'package:jojocards/screens/home_page.dart';
import 'package:jojocards/screens/kidspage.dart';
import 'package:jojocards/screens/squadpage.dart';


class Util {
  static List<PlaceInfo> getMockedCategories() {
    return [
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
    ];
  }
}
