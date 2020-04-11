import 'package:flutkart/pages/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutkart/pages/splash_screen.dart';

var routes = <String, WidgetBuilder>{
  "/Home": (BuildContext context) => HomeScreen(),
  //"/map": (BuildContext context) => MyApp()
//  "/intro": (BuildContext context) => IntroScreen(),
};

void main() => runApp(new MaterialApp(
    theme:
        ThemeData(primaryColor: Colors.red, accentColor: Colors.yellowAccent),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: routes));

