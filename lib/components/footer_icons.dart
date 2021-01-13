import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotello/screens/challenge-19-7/profile.dart';
import 'package:hotello/screens/challenge-19-7/search_hotel.dart';

// Height of the container is 66.0

class Footer extends StatefulWidget {
  final bool radius;

  Footer({this.radius});
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
    return InkWell(
      onTap: () {
        setState(() {
          _selectedIndex = index;
          if (_selectedIndex == 4) {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => UserProfile()));
          } else if (_selectedIndex == 1) {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => SearchHotel()));
          }
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
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
    return Container(
      height: 66,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[200],
            blurRadius: 10.0,
            spreadRadius: 2.5,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            SizedBox(height: 6.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buildIcon(map.key),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
