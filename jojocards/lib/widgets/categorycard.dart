// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:jojocards/models/categories.dart';
import 'package:jojocards/screens/adultspage.dart';
import 'package:jojocards/screens/boyspage.dart';
import 'package:jojocards/screens/couplespage.dart';
import 'package:jojocards/screens/girlspage.dart';
import 'package:jojocards/screens/kidspage.dart';
import 'package:jojocards/screens/squadpage.dart';
import 'package:jojocards/utils/common_widget.dart';
import 'dart:ui' as ui;

class CategoryCard extends StatelessWidget {
  PlaceInfo placeInfo;
  Function onCardClick;

   CategoryCard({this.onCardClick, this.placeInfo});

  @override
  Widget build(BuildContext context) {
    const double _borderRadius = 24;
    return GestureDetector(
      onTap: () {
        onCardClick();
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 120,
                child: Stack(
                  children: [
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(_borderRadius),
                        gradient: LinearGradient(
                            colors: [
                              placeInfo.startColor,
                              placeInfo.endColor
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        boxShadow: [
                          BoxShadow(
                            color: placeInfo.endColor,
                            blurRadius: 12,
                            offset: Offset(0, 6),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      top: 0,
                      child: CustomPaint(
                        size: Size(100, 150),
                        painter: CustomCardShapePainter(_borderRadius,
                            placeInfo.startColor, placeInfo.endColor),
                      ),
                    ),
                    Positioned.fill(
                      child: Row(
                        children: <Widget>[
                          // Expanded(
                          //   child: Image.asset(
                          //     'assets/icon.png',
                          //     height: 64,
                          //     width: 64,
                          //   ),
                          //   flex: 2,
                          // ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            flex: 4,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  placeInfo.name,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Calibri',
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  placeInfo.category,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Calibri',
                                  ),
                                ),
                                SizedBox(height: 12),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.lock,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Flexible(
                                      child: Text(
                                        placeInfo.location,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Calibri',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                 placeInfo.rating.toString(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Calibri',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                // RatingBar(rating: items[index].rating),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
  }
}

class CustomCardShapePainter extends CustomPainter {
  final double radius;
  final Color startColor;
  final Color endColor;

  CustomCardShapePainter(this.radius, this.startColor, this.endColor);

  @override
  void paint(Canvas canvas, Size size) {
    var radius = 24.0;

    var paint = Paint();
    paint.shader = ui.Gradient.linear(
        Offset(0, 0), Offset(size.width, size.height), [
      HSLColor.fromColor(startColor).withLightness(0.8).toColor(),
      endColor
    ]);

    var path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width - radius, size.height)
      ..quadraticBezierTo(
          size.width, size.height, size.width, size.height - radius)
      ..lineTo(size.width, radius)
      ..quadraticBezierTo(size.width, 0, size.width - radius, 0)
      ..lineTo(size.width - 1.5 * radius, 0)
      ..quadraticBezierTo(-radius, 2 * radius, 0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
