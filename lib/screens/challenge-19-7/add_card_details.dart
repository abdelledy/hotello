import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotello/components/challenge-19-7/text_field.dart';
import 'package:hotello/screens/challenge-19-7/successful_booking.dart';
import 'package:hotello/components/the_container.dart';

class AddCardDetails extends StatefulWidget {
  @override
  _AddCardDetailsState createState() => _AddCardDetailsState();
}

class _AddCardDetailsState extends State<AddCardDetails> {
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
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          'Add Card Details',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(
              Icons.camera_alt,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      // ************ AppBar-End
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200.0,
                  width: 320.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/cc_card.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Enter your credit card details',
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(height: 10.0),
                MyTextField(width: 320.0, text: 'Card holder name', icon: null),
                SizedBox(height: 10.0),
                MyTextField(
                  width: 320.0,
                  text: 'Card number',
                  icon: FontAwesomeIcons.ccVisa,
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyTextField(
                        width: 150.0, text: 'Exprition date', icon: null),
                    MyTextField(width: 150.0, text: 'Cvv', icon: null),
                  ],
                ),
              ],
            ),
          ),
          CheckboxListTile(
            title: Text('Save this card for future payments?'),
            value: timeDilation != 1.0,
            activeColor: Colors.green,
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (bool value) {
              setState(() {
                timeDilation = value ? 2.0 : 1.0;
              });
            },
          ),
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => Done(),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TheContainer(
                height: 50.0,
                color: Theme.of(context).primaryColor,
                textInside: 'Add Card',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
