import 'package:flutter/material.dart';

class Links extends StatelessWidget {
  final String text;
  final IconData icon;
  Links({this.text, this.icon});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon != null ? SizedBox(height: 7.0) : SizedBox(height: 14.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                icon != null
                    ? Icon(icon,
                        color: Theme.of(context).primaryColor, size: 30.0)
                    : SizedBox(width: 0.0),
                icon != null ? SizedBox(width: 10.0) : SizedBox.shrink(),
                Text(
                  text,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 20.0,
              color: Colors.grey[700],
            ),
          ],
        ),
        icon != null ? SizedBox(height: 7.0) : SizedBox(height: 14.0),
        Divider(height: 5.0, color: Colors.grey[500]),
      ],
    );
  }
}
