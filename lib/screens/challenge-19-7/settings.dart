import 'package:flutter/material.dart';
import 'package:hotello/components/challenge-19-7/links.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          children: [
            SizedBox(height: 30.0),
            Divider(height: 5.0, color: Colors.grey[500]),
            Links(text: 'Language'),
            Links(text: 'Notifications'),
            Links(text: 'Country'),
            Links(text: 'Security'),
            Links(text: 'Contact Us'),
            Links(text: 'Give Us Feedback'),
            Links(text: 'Terms Of Service'),
            Links(text: 'Privacy Policy'),
          ],
        ),
      ),
    );
  }
}
