import 'dart:ui';

import 'package:equatable/equatable.dart';
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

class PlaceInfo extends Equatable{
  String id;
  String name;
  String category;
  String location;
  String rating;
  Color startColor;
  Color endColor;
  Widget route;
  bool isCompleted;
  bool isCancelled;

  PlaceInfo({@required this.id,@required this.name,this.startColor,
    @required this.endColor,@required this.rating,
    @required this.location, @required this.category,
    @required this.route, this.isCompleted, this.isCancelled}){
    isCancelled = isCancelled ?? false;
    isCompleted = isCompleted ?? false;
  }

  PlaceInfo copyWith({
    String id,
    String name,
    String category,
    String location,
    String rating,
    Color startColor,
    Color endColor,
    Widget route,
    bool isCompleted,
    bool isCancelled,
}) {
    return PlaceInfo(
        id: id ?? this.id,
        name: name ?? this.name,
        startColor: startColor ?? this.startColor,
        endColor: endColor ?? this.endColor,
        rating: rating ?? this.rating,
        location: location ?? this.location,
        category: category ?? this.category,
        route: route ?? this.route,
        isCancelled: isCancelled ?? this.isCancelled,
        isCompleted: isCompleted ?? this.isCompleted
    );
  }

  @override
  // TODO: implement props
  List<Object> get props => [id,name,endColor,startColor,rating,location,category,route,isCancelled,isCompleted];
}
