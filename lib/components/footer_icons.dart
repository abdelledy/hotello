import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatefulWidget {
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  int _selectedIndex = 0;

  List<String> _names = ['Home', 'Search', 'My Stay', 'Favorite', 'User'];

  List<IconData> _icons = [
    FontAwesomeIcons.home,
    FontAwesomeIcons.search,
    FontAwesomeIcons.hotel,
    FontAwesomeIcons.heart,
    FontAwesomeIcons.user,
  ];
  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        // decoration: BoxDecoration(
        //   color: _selectedIndex == index
        //       ? Theme.of(context).accentColor
        //       : Color(0XFFE7EBEE),
        //   borderRadius: BorderRadius.circular(30.0),
        // ),
        child: Column(
          children: [
            SizedBox(height: 9.0),
            Icon(
              _icons[index],
              size: 18.0,
              color: _selectedIndex == index
                  ? Theme.of(context).primaryColor
                  : Colors.grey[400],
            ),
            SizedBox(height: 7.0),
            Text(
              _names[index],
              style: TextStyle(
                color: _selectedIndex == index
                    ? Theme.of(context).primaryColor
                    : Colors.grey[400],
                fontSize: 10.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: _icons
          .asMap()
          .entries
          .map(
            (MapEntry map) => _buildIcon(map.key),
          )
          .toList(),
    );
  }
}
