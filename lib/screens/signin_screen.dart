import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                Text(
                  '- Welcome Back -',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.3,
                  ),
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
                          labelText: 'User name',
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 5.0),
                          height: 60.0,
                          width: 300.0,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
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
                          padding: EdgeInsets.only(right: 12.0, bottom: 10.0),
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      // onTap: () => Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (_) => SignIn(),
                      //   ),
                      // ),
                      child: Container(
                        height: 60.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                        child: Center(
                          child: Text(
                            'Sign-in',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/face-id.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Text('-OR-'),
                    SizedBox(height: 15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/facebook.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage("assets/images/google-plus.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/twitter.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 77.0, top: 0.0, bottom: 10.0),
                      child: Row(
                        children: [
                          Text(
                            "Dont't have an account? ",
                            style: TextStyle(
                              color: Colors.grey[400],
                            ),
                          ),
                          Text(
                            ' Sign Up',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // Padding(
                //   padding: EdgeInsets.fromLTRB(60.0, 0.0, 20.0, 0.0),
                //   child: Row(
                //     children: [
                //       Text(
                //         "Dont't have an account? ",
                //         style: TextStyle(
                //           color: Colors.grey[400],
                //         ),
                //       ),
                //       Text(
                //         ' Sign Up',
                //         style: TextStyle(
                //           color: Colors.blueGrey,
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
