import 'package:flutter/material.dart';
import 'package:flutter_demo/DrawerDemo.dart';
import 'package:flutter_demo/FadeInImageDemo.dart';
import 'package:flutter_demo/FetchData.dart';
import 'package:flutter_demo/JSONParserData.dart';
import 'package:flutter_demo/SignUpScreen.dart';
import 'package:flutter_demo/SplashScreen.dart';
import 'package:flutter_demo/TabBarDemo.dart';
import 'package:flutter_demo/map_demo/MapHomePage.dart';
import 'package:flutter_demo/models/MyApp.dart';
import 'package:flutter_demo/onboarding/onboard_main.dart';

import 'HomePage.dart';
import 'LoginPage.dart';
import 'helpers/Constants.dart';

void main() => runApp(ContactlyApp());

class ContactlyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          loginPageTag: (context) => LoginPage(),
          homePageTag: (context) => HomePage(),
          myAppPageTag: (context) => MyApp(),
          drawerDemoPageTag: (context) => DrawerDemo(),
          tabBarDemoPageTag: (context) => TabBarDemo(),
          fadeInImageDemoPageTag: (context) => FadeInImageDemo(),
          fetchDataDemoPageTag: (context) => FetchData(),
          jSONParserDataPageTag: (context) => JSONParserData(),
          splashScreenTag: (context) => SplashScreen(),
          onBoardMainTag: (context) => onboard_main(),
          signUpScreenTag: (context) => SignUpScreen(),
          mapHomePageTag: (context) => MapHomePage(),
        },
        debugShowCheckedModeBanner: false,
        title: appTitle,
        theme: new ThemeData(
          primaryColor: appOrangeColor,
        ),
        home: SplashScreen());
  }
}
