import 'package:flutter/material.dart';

class Econ extends StatelessWidget {
  final IconData icon;
  final String name;
  final int clicked;
  Econ({this.icon, this.name, this.clicked});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
              color:
                  clicked == 1 ? Theme.of(context).primaryColor : Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
            ),
            child: Center(
              child: Icon(
                icon,
                color: clicked == 1
                    ? Colors.white
                    : Theme.of(context).primaryColor,
                size: 25.0,
              ),
            ),
          ),
          SizedBox(height: 5.0),
          Text(name),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
