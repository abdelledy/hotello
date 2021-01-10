import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final int numColored;
  final double iconSize;

  Rating({this.numColored, this.iconSize});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star,
            color: numColored < 1 ? Colors.grey[400] : Colors.amber,
            size: iconSize),
        Icon(Icons.star,
            color: numColored < 2 ? Colors.grey[400] : Colors.amber,
            size: iconSize),
        Icon(Icons.star,
            color: numColored < 3 ? Colors.grey[400] : Colors.amber,
            size: iconSize),
        Icon(Icons.star,
            color: numColored < 4 ? Colors.grey[400] : Colors.amber,
            size: iconSize),
        Icon(Icons.star,
            color: numColored < 5 ? Colors.grey[400] : Colors.amber,
            size: iconSize),
      ],
    );
  }
}
