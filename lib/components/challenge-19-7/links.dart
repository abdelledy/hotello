import 'package:flutter/material.dart';

class Links extends StatelessWidget {
  final String text;
  Links({this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 14.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text),
            Icon(
              Icons.arrow_forward_ios,
              size: 20.0,
              color: Colors.grey[700],
            ),
          ],
        ),
        SizedBox(height: 14.0),
        Divider(height: 5.0, color: Colors.grey[500]),
      ],
    );
  }
}
