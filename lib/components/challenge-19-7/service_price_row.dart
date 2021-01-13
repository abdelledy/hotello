import 'package:flutter/material.dart';

class ServicePrice extends StatelessWidget {
  final String name;
  final String price;
  final bool isTotal;

  ServicePrice({this.name, this.price, this.isTotal});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: TextStyle(
                fontSize: 16.0,
                // color: Colors.grey[500],
                fontWeight: isTotal ? FontWeight.w500 : FontWeight.w400,
              ),
            ),
            Text(
              '\$$price',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: isTotal ? FontWeight.w500 : FontWeight.w400,
                color: isTotal ? Theme.of(context).primaryColor : Colors.black,
              ),
            ),
          ],
        ),
        SizedBox(height: 12.0),
      ],
    );
  }
}
