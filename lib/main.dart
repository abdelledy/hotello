import 'package:flutter/material.dart';
import 'package:hotello/screens/splash_screen.dart';
import 'package:hotello/screens/landing_screen.dart';
import 'package:hotello/screens/second_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotello UI',
      debugShowCheckedModeBanner: false,
      // routes: {
      //   '/': (BuildContext context) => SplashScreen(),
      //   '/landing_screen': (BuildContext context) => LandingScreen(),
      //   '/secondPage': (BuildContext context) => SecondScreen(),
      // },
      theme: ThemeData(
        primaryColor: Color.fromRGBO(1, 82, 137, 1),
        accentColor: Color.fromRGBO(38, 38, 38, 0.4),
      ),
      home: SplashScreen(),
    );
  }
}
