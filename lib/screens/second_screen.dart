import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotello/screens/third_screen.dart';
import 'package:hotello/screens/landing_screen.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10.0),
                      height: 200.0,
                      child: SvgPicture.asset('assets/svg/location_search.svg'),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 10.0),
                      child: Text(
                        'Manage Bookings',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(70.0, 20.0, 70.0, 20.0),
                      child: Text(
                        'Bookings and cancellation anytime, anywhere you want to.',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 15.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(40.0, 100.0, 40.0, 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Back',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => LandingScreen(),
                            ),
                          ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '—',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(152, 185, 211, 1),
                      ),
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      '—',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      '—',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(152, 185, 211, 1),
                      ),
                    ),
                  ],
                ),
                RichText(
                  text: TextSpan(
                    text: 'Next',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ThirdScreen(),
                            ),
                          ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
