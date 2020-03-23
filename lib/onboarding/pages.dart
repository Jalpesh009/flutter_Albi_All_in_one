import 'package:flutter/material.dart';
import 'package:flutter_demo/helpers/Constants.dart';

final pages = [
  new PageViewModel(
      const Color(0xFFFF682D),
      'assets/images/onboarding1.png',
      'Our Story',
      'Get your owntime   Easy user interface   Launch your business.',
      'assets/images/plane.png'),
  new PageViewModel(
      appYellowColor,
      'assets/images/onboarding2.png',
      'Our Services',
      'Identify enhancements that will help to engage your end user.',
      'assets/images/calendar.png'),
  new PageViewModel(
    const Color(0xFFE4534D),
    'assets/images/onboarding3.png',
    'Our Technologies',
    'We are changing the world with technology.',
    'assets/images/house.png',
  ),
];

class Page extends StatelessWidget {
  final PageViewModel viewModel;
  final double percentVisible;

  Page({
    this.viewModel,
    this.percentVisible = 1.0,
  });

  @override
  Widget build(BuildContext context) {
    return new Container(
        width: double.infinity,
        color: viewModel.color,
        child: new Opacity(
          opacity: percentVisible,
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Transform(
                  transform: new Matrix4.translationValues(
                      0.0, 50.0 * (1.0 - percentVisible), 0.0),
                  child: new Padding(
                    padding: new EdgeInsets.only(bottom: 25.0),
                    child: new Image.asset(viewModel.heroAssetPath,
                        width: 200.0, height: 200.0),
                  ),
                ),
                new Transform(
                  transform: new Matrix4.translationValues(
                      0.0, 30.0 * (1.0 - percentVisible), 0.0),
                  child: new Padding(
                    padding: new EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: new Text(
                      viewModel.title,
                      style: new TextStyle(
                        color: Colors.white,
                        fontFamily: 'Redressed',
                        fontSize: 34.0,
                      ),
                    ),
                  ),
                ),
                new Transform(
                  transform: new Matrix4.translationValues(
                      0.0, 30.0 * (1.0 - percentVisible), 0.0),
                  child: new Padding(
                    padding: new EdgeInsets.only(bottom: 75.0),
                    child: new Text(
                      viewModel.body,
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        color: Colors.white,
                        fontFamily: 'Redressed',
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ]),
        ));
  }
}

class PageViewModel {
  final Color color;
  final String heroAssetPath;
  final String title;
  final String body;
  final String iconAssetPath;

  PageViewModel(
    this.color,
    this.heroAssetPath,
    this.title,
    this.body,
    this.iconAssetPath,
  );
}
