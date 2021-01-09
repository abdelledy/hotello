import 'package:flutter/material.dart';

class SortBy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // ************ AppBar-Start
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.clear,
              color: Colors.black,
            )),
        title: Text(
          'Sort By',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      // ************ AppBar-End
      body: MyStateFull(),
    );
  }
}

enum SingingCharacter {
  popular_nearby,
  popularity,
  rating_highest,
  rating_lowest,
  price,
  distance,
  most_reviewed
} // **************

class MyStateFull extends StatefulWidget {
  @override
  _MyStateFullState createState() => _MyStateFullState();
}

class _MyStateFullState extends State<MyStateFull> {
  SingingCharacter _character = SingingCharacter.popular_nearby;
  @override
  Widget build(BuildContext context) {
    _buildCheckBox(String text, SingingCharacter char) {
      return RadioListTile<SingingCharacter>(
        title: Text(text),
        value: char, // SingingCharacter
        groupValue: _character,
        onChanged: (SingingCharacter value) {
          setState(() {
            _character = value;
          });
        },
      );
    }

    return Column(
      children: <Widget>[
        SizedBox(height: 30.0),
        _buildCheckBox('Popular nearby first', SingingCharacter.popular_nearby),
        _buildCheckBox('Popularity', SingingCharacter.popularity),
        _buildCheckBox('Rating(highest rate)', SingingCharacter.rating_highest),
        _buildCheckBox('Rating(lowest rate)', SingingCharacter.rating_lowest),
        _buildCheckBox('Price(highest rate)', SingingCharacter.price),
        _buildCheckBox('Distance from place', SingingCharacter.distance),
        _buildCheckBox('Most reviewed first', SingingCharacter.most_reviewed),
      ],
    );
  }
}
