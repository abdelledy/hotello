import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotello/components/the_container.dart';
import 'package:hotello/screens/challenge-19-7/add_card_details.dart';

class PaymentMethodSelector extends StatelessWidget {
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
          'Payment Method',
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
  credit_card,
  internet_banking,
  paypal
} // **************

class MyStateFull extends StatefulWidget {
  @override
  _MyStateFullState createState() => _MyStateFullState();
}

class _MyStateFullState extends State<MyStateFull> {
  SingingCharacter _character = SingingCharacter.credit_card;
  @override
  Widget build(BuildContext context) {
    _buildCheckBox(
        String name, SingingCharacter char, String text, IconData icon) {
      return Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: RadioListTile<SingingCharacter>(
          title: Container(
            height: 70.0,
            width: 250.0,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(icon, color: Theme.of(context).primaryColor),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        text,
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 13.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          value: char, // SingingCharacter
          groupValue: _character,
          onChanged: (SingingCharacter value) {
            setState(() {
              _character = value;
            });
          },
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 30.0),
        Padding(
          padding: EdgeInsets.only(left: 27.0),
          child: Text(
            'Select one of the payment methods',
            style: TextStyle(
              color: Colors.grey[900],
              fontSize: 15.0,
            ),
          ),
        ),
        SizedBox(height: 20.0),
        _buildCheckBox('Credit Card', SingingCharacter.credit_card,
            'Pay with MasterCard or Visa', Icons.credit_card),
        _buildCheckBox('Internet Banking', SingingCharacter.internet_banking,
            'Pay directly from your bank account', FontAwesomeIcons.university),
        _buildCheckBox('PayPal', SingingCharacter.paypal,
            'Faster & Safer way to send money', FontAwesomeIcons.paypal),
        SizedBox(height: 60.0),
        Center(
          child: InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => AddCardDetails(),
              ),
            ),
            child: TheContainer(
                color: Theme.of(context).primaryColor,
                height: 60.0,
                textInside: 'Next',
                width: 200.0),
          ),
        ),
      ],
    );
  }
}
