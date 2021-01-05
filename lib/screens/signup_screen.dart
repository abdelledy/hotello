import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hotello/screens/signin_screen.dart';
import 'package:hotello/screens/email_validation_screen.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          InkWell(
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
            },
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(60.0, 30.0, 60.0, 30.0),
                  child: Image.asset('assets/images/blue-logo.png'),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
                      height: 60.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border: Border.all(
                          color: Colors.blueGrey,
                          width: 1,
                        ),
                      ),
                      child: TextField(
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blueGrey,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Full name',
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: Colors.blueGrey,
                            size: 22,
                          ),
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                      height: 60.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border: Border.all(
                          color: Colors.blueGrey,
                          width: 1,
                        ),
                      ),
                      child: TextField(
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blueGrey,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Email',
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.blueGrey,
                            size: 22,
                          ),
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
                      height: 60.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        border: Border.all(
                          color: Colors.blueGrey,
                          width: 1,
                        ),
                      ),
                      child: TextField(
                        obscureText: true, // to hide password when writing
                        obscuringCharacter: "*",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blueGrey,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Password',
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            size: 22,
                            color: Colors.blueGrey,
                          ),
                          labelStyle: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => EmailValidation(),
                          ),
                        );
                      },
                      child: Container(
                        height: 60.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                        child: Center(
                          child: Text(
                            'Create account',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 102.0),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 77.0, top: 0.0, bottom: 10.0),
                      child: Row(
                        children: [
                          Text(
                            "Already have an account? ",
                            style: TextStyle(
                              color: Colors.grey[400],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: ' Log in',
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => SignIn(),
                                      ),
                                    ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
