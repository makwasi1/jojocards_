import 'dart:ui';

import 'package:flutter/material.dart';

class Category {
  String name;
  String icon;
  String imageName;
  Color color;
  String price;
  String total;
  List<Category> subCategories;
  Widget route;
  Category(
      {this.name,
      this.icon,
      this.color,
      this.subCategories,
      this.price,
      this.total,
      this.route,
      this.imageName});
}

class PlaceInfo {
  String name;
  String category;
  String location;
  String rating;
  Color startColor;
  Color endColor;
  Widget route;

  PlaceInfo(this.name, this.startColor, this.endColor, this.rating,
      this.location, this.category, this.route);
}
