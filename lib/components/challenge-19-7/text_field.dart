import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final double width;
  final String text;
  final IconData icon;

  MyTextField({this.width, this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    double wee = width - 62.0;
    return Container(
      height: 50.0,
      width: width,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50.0,
              width: icon == null ? (width - 28.0) : wee,
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: text,
                  hintStyle: TextStyle(color: Colors.grey[400]),
                ),
              ),
            ),
            icon == null ? Text('') : Icon(icon),
          ],
        ),
      ),
    );
  }
}
