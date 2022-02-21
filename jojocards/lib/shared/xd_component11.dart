import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDComponent11 extends StatelessWidget {
  XDComponent11({
   Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(start: 0.0, end: 0.0),
          child: SvgPicture.string(
            _svg_f4fhev,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}

const String _svg_f4fhev =
    '<svg viewBox="0.0 0.0 353.8 212.8" ><path  d="M 0 0 L 353.8220520019531 0 L 353.8220520019531 212.7943115234375 L 0 212.7943115234375 L 0 0 Z" fill="#bebdce" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
