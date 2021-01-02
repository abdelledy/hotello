import 'package:flutter/material.dart';
import 'package:hotello/screens/home_screen.dart';

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
        primaryColor: Color(015289),
        accentColor: Color(14871536),
      ),
      home: HomeScreen(),
    );
  }
}
