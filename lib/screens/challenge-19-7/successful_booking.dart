import 'package:flutter/material.dart';
import 'package:hotello/components/the_container.dart';
import 'package:hotello/screens/find_a_hotel.dart';

class Done extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200.0,
              width: 200.0,
              child: Image.asset('assets/images/done.png'),
            ),
            SizedBox(height: 30.0),
            Text(
              'Your booking is successful',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'You can now find your booking details\nat upcoming trips',
              style: TextStyle(
                fontSize: 14.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 80.0),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => FindHotel(),
                ),
              ),
              child: TheContainer(
                  color: Theme.of(context).primaryColor,
                  textInside: 'Done',
                  height: 50.0,
                  width: 250.0),
            )
          ],
        ),
      ),
    );
  }
}
