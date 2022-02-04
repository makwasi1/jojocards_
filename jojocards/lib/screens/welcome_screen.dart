// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jojocards/screens/login_screen.dart';
import 'package:jojocards/core/string_extensions.dart';
import 'package:jojocards/screens/sign_up.dart';
import 'package:jojocards/screens/splashview.dart';
import 'package:jojocards/shared/colors.dart';
import 'package:jojocards/shared/images.dart';
import 'package:jojocards/shared/typography.dart';
import 'package:jojocards/utils/no_animation_navigator.dart';


const double _itcLogoBottomOffset = 70;
const double _translationHidden = -300;
const double _translationVisible = -100;
const double _translationQuestionMarkHidden = -600;
const double _translationQuestionMarkVisible = -310;
const Duration _transitionAnimationDuration = Duration(milliseconds: 1500);
const Duration _changeColorTimerDuration = Duration(milliseconds: 1500);


class SplashView extends StatefulWidget {
  const SplashView({Key key}) : super(key: key);

  @override
  SplashViewState createState() => SplashViewState();
}

class SplashViewState extends State<SplashView> {
  bool _isLoading = false;
  Timer _timer;
  Color _color = AppColors.redBackground;
  double _questionMarkRightOffset = _translationQuestionMarkHidden;
  double _exclamationMarkLeftOffset = _translationHidden;
  double _itcLogoOffset = _itcLogoBottomOffset;

  @override
  void initState() {
    _timer = Timer(_transitionAnimationDuration, () {
      _showQuestionMark();
      _startChangeColorTimer();
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedContainer(
            duration: _transitionAnimationDuration,
            color: _color,
            onEnd: _runHideAllAnimation,
          ),
          AnimatedPositioned(
            top: 0,
            bottom: 0,
            right: _questionMarkRightOffset,
            duration: _transitionAnimationDuration,
            curve: _questionMarkRightOffset == _translationQuestionMarkHidden ? Curves.elasticIn : Curves.elasticOut,
            onEnd: _animateExclamationMark,
            child: Image.asset(
              "assets/images/question_mark.png",
              fit: BoxFit.fitHeight,
            ),
          ),
          AnimatedPositioned(
            top: 0,
            bottom: 0,
            left: _exclamationMarkLeftOffset,
            duration: _transitionAnimationDuration,
            curve: _exclamationMarkLeftOffset == _translationHidden ? Curves.elasticIn : Curves.elasticOut,
            child: Image.asset(
              "assets/images/exclamation_mark.png",
              fit: BoxFit.fitHeight,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset("assets/images/logo_black.png"),
          ),
          AnimatedPositioned(
            duration: _transitionAnimationDuration,
            bottom: _itcLogoOffset,
            left: 0,
            right: 0,
            curve: Curves.bounceOut,
            child: Text("jojocards_", textAlign: TextAlign.center, style: TextStyle(fontFamily: 'calibri-bold', fontSize: 40, fontWeight: FontWeight.w900)),
            onEnd: _navigateToWelcomePage,
          ),
        ],
      ),
        );
  }


  void _startChangeColorTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(_changeColorTimerDuration, (timer) => _changeColor());
  }

  void _showQuestionMark() {
    setState(() {
      _questionMarkRightOffset = _translationQuestionMarkVisible;
    });
  }

  void _changeColor() {
    setState(() {
      _color = AppColors.maroonBground;
      _questionMarkRightOffset = _translationQuestionMarkHidden;
    });
  }

  void _animateExclamationMark() {
    if (_questionMarkRightOffset == _translationQuestionMarkHidden) {
      setState(() {
        _exclamationMarkLeftOffset = _translationVisible;
      });
    }
  }

  void _runHideAllAnimation() {
    _hideExclamationMark(onEnd: () => _hideItcLogo());
  }

  void _hideExclamationMark({VoidCallback onEnd}) {
    _timer?.cancel();
    _timer = Timer.periodic(_transitionAnimationDuration, (timer) {
      setState(() {
        _exclamationMarkLeftOffset = _translationHidden;
      });
      onEnd();
    });
  }

  void _hideItcLogo() {
    _timer?.cancel();
    _timer = Timer.periodic(_transitionAnimationDuration, (timer) {
      setState(() {
        _itcLogoOffset = _translationHidden;
      });
    });
  }

  void _navigateToWelcomePage() {
    pushReplacementWithoutAnimation(context, WelcomePage());
  }
}
