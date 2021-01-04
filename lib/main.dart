import 'package:flutter/material.dart';
import 'package:hotello/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotello UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(1, 82, 137, 1),
        accentColor: Color.fromRGBO(38, 38, 38, 0.4),
      ),
      home: SplashScreen(),
    );
  }
}
