import 'package:flutter/material.dart';

class TheContainer extends StatelessWidget {
  final double width;
  final double height;
  final String textInside;
  final Color color;

  TheContainer({this.width, this.color, this.height, this.textInside});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: color,
      ),
      child: Center(
        child: Text(
          textInside,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            letterSpacing: 1.0,
          ),
        ),
      ),
    );
  }
}
