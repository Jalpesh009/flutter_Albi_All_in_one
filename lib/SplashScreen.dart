import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/helpers/Constants.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [appOrangeColor, appYellowColor])),
          child: Center(
            child: TyperAnimatedTextKit(
              isRepeatingAnimation: false,
              onTap: () {
                print("Tap Event");
              },
              text: [
                "Albiorix technology pvt. ltd",
                "First Flutter Demo",
                "Let's see",
                "How its look?",
              ],
              textStyle: TextStyle(
                  fontSize: 50.0, fontFamily: "Bobbers", color: Colors.white),
              textAlign: TextAlign.center,
              alignment: AlignmentDirectional.topStart,
              onFinished: () {
                _gotoOtherScreen(context);
              },
              speed: Duration(
                  days: 0,
                  hours: 0,
                  minutes: 0,
                  seconds: 0,
                  milliseconds: 60,
                  microseconds: 0),
            ),
          ),
        ),
      ),
    );
  }

  _gotoOtherScreen(BuildContext context) {
    Navigator.pushNamed(context, onBoardMainTag);
  }
}
