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
      PlaceInfo('Boys', Color(0xff0320FF), Color(0xff73A1F9), "Ugx 30,000", " ",
        'Cosy · Casual · Good for boys', BoysPage()),
    PlaceInfo('Kids', Color(0xffFFA70F), Color(0xffFFA057), "Ugx 30,000", '',
        'Casual · Good for kids', KidsPage()),
    PlaceInfo('Girls', Color(0xffEC31B7), Color(0xffF8556D), "Ugx 30,000", '',
        'Casual · Good for girls', GilrsPage()),
    PlaceInfo('Couples', Color(0xffEC3106), Color(0xffEC3106),
        "Ugx 30,000", '', 'Intimate · Good for couples', CouplesPage()),
    PlaceInfo('Squad', Color(0xff090A36), Color.fromRGBO(0, 0, 128,100),
        "Ugx 30,000", '', 'Have fun with your squad', SquadPage()),
    PlaceInfo('Adults', Color(0xff000000), Color(0xff2C2A30), "Ugx 30,000", '',
        'Only adults', AdultsPage()),
    ];
  }
}
