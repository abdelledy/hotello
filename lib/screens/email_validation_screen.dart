import 'package:flutter/material.dart';
import 'package:hotello/screens/signup_screen.dart';
import 'package:hotello/screens/search_screen.dart';
import 'package:hotello/components/the_container.dart';

class EmailValidation extends StatefulWidget {
  @override
  _EmailValidationState createState() => _EmailValidationState();
}

class _EmailValidationState extends State<EmailValidation> {
  _digitContainer() {
    return InkWell(
      child: Container(
        width: 45.0,
        height: 45.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          border: Border.all(
            color: Theme.of(context).primaryColor,
            width: 2.0,
          ),
        ),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => SignUp(),
            ),
          ),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blueGrey,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: InkWell(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Verification',
                      style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.grey[800],
                        // fontWeight: FontWeight.w400,
                        letterSpacing: 1.3,
                      ),
                    ),
                    SizedBox(height: 28.0),
                    Text(
                      '4 - Digit PIN has been sent to your phone,\nenter it bellow to continue.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 60.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _digitContainer(),
                        SizedBox(width: 20.0),
                        _digitContainer(),
                        SizedBox(width: 20.0),
                        _digitContainer(),
                        SizedBox(width: 20.0),
                        _digitContainer(),
                      ],
                    ),
                    SizedBox(height: 60.0),
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SearchScreen()),
                      ),
                      child: TheContainer(
                        color: Theme.of(context).primaryColor,
                        height: 60.0,
                        textInside: 'Confirm',
                        // width: 100.0,
                      ),
                    ),
                    SizedBox(height: 18.0),
                    Padding(
                      padding: EdgeInsets.only(right: 215.0),
                      child: Container(
                        padding: EdgeInsets.only(bottom: 2),
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.black, width: 1.0))),
                        child: Text("Resend Code?",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
