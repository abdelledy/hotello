import 'package:flutter/material.dart';
import 'package:hotello/components/footer_icons.dart';
import 'package:hotello/components/challenge-19-7/links.dart';
import 'package:evil_icons_flutter/evil_icons_flutter.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(title: Text('Account'), elevation: 0.0, centerTitle: true),
      body: Column(
        children: [
          Container(
            height: 164.0,
            width: 360.0,
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: 100.0,
                    width: 100.0,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 5.0,
                          right: 5.0,
                          child: Container(
                            height: 90.0,
                            width: 90.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 3.0,
                                  right: 3.0,
                                  child: Container(
                                    height: 84.0,
                                    width: 84.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      image: DecorationImage(
                                        image:
                                            AssetImage("assets/images/me.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    child: Image.asset(''),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0.0,
                          bottom: 0.0,
                          child: Container(
                            height: 20.0,
                            width: 20.0,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            child: Icon(Icons.edit,
                                color: Colors.white, size: 12.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Abdell Ed',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 3.0),
                  Text(
                    'contact@edee.com',
                    style: TextStyle(
                      fontSize: 16.0,
                      // fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ), // ******* color: Colors.orange
          Container(
            height: 330.0,
            width: 360.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0)),
            ),
            child: Padding(
              padding: EdgeInsets.all(14.0),
              child: Column(
                children: [
                  Links(text: 'Personal Information', icon: EvilIcons.user),
                  Links(text: 'Notification', icon: EvilIcons.paperclip),
                  Links(text: 'Payment', icon: EvilIcons.credit_card),
                  Links(text: 'Trips', icon: EvilIcons.plus),
                  Links(text: 'Settings', icon: EvilIcons.gear),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10.0),
                      Icon(Icons.arrow_left, color: Colors.orange, size: 40.0),
                      SizedBox(width: 10.0),
                      Text(
                        'Log Out',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.orange,
                            fontSize: 18.0),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 66.0,
            width: 360.0,
            // color: Colors.red,
            child: Footer(),
          ),
        ],
      ),
    );
  }
}
