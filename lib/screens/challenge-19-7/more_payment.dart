import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotello/components/challenge-19-7/service_price_row.dart';
import 'package:hotello/components/the_container.dart';

class MorePayment extends StatelessWidget {
  _buildIcon(IconData icon, String text, Color color) {
    return Column(
      children: [
        Icon(icon, color: color, size: 15.0),
        SizedBox(height: 5.0),
        Text(text, style: TextStyle(fontSize: 14.0, color: Colors.grey[600])),
      ],
    );
  }

  _columee(String fixed, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(fixed, style: TextStyle(fontSize: 18.0, color: Colors.grey[500])),
        SizedBox(height: 5.0),
        Text(value, style: TextStyle(fontSize: 16.0, color: Colors.black)),
        SizedBox(height: 20.0),
      ],
    );
  }

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
          'Book Now',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.more_vert, color: Colors.black),
          )
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        width: 360.0,
        height: 600.0,
        color: Colors.white,
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 10.0),
                Container(
                  height: 180.0,
                  width: 320.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200],
                        blurRadius: 10.0,
                        spreadRadius: 2.5,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Container(
                          height: 150.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            image: DecorationImage(
                              image: AssetImage("assets/images/room.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20.0),
                            Text(
                              'Classic Flat\nRoom',
                              style: TextStyle(
                                  fontSize: 22.0, color: Colors.black),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  '\$155 ',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.amber,
                                  ),
                                ),
                                Text(
                                  ' / 3 nights',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.grey[500],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: [
                                Text(
                                  'View Details  ',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.w600),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
                Container(
                  height: 413.0,
                  width: 320.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200],
                        blurRadius: 10.0,
                        spreadRadius: 2.5,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Property Details',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600)),
                            Icon(Icons.keyboard_arrow_up, size: 25.0),
                          ],
                        ),
                      ),
                      Divider(color: Colors.grey[500]),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _columee('Name', 'Abdell Ed'),
                                _columee('Phone', '+393510433872'),
                                _columee('Nights', '5 Nights'),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _columee('Email', 'contact@ed.com'),
                                _columee(
                                    'Stay Inforamation', '10, May - 16, May'),
                                _columee('Room & Guests', '2 Room, 4 Guest'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(color: Colors.grey[500]),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Facilities',
                                style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(height: 15.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                _buildIcon(FontAwesomeIcons.wifi, 'Wifi',
                                    Colors.greenAccent),
                                _buildIcon(FontAwesomeIcons.dumbbell, 'Gym',
                                    Colors.purpleAccent),
                                _buildIcon(FontAwesomeIcons.fan, 'Spa',
                                    Colors.blueAccent),
                                _buildIcon(Icons.local_dining, 'Restaurant',
                                    Colors.orangeAccent),
                                _buildIcon(Icons.local_parking, 'Parking',
                                    Colors.pinkAccent),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0),
                    ],
                  ),
                ),
                // ********************
                SizedBox(height: 15.0),
                Container(
                  height: 227.0,
                  width: 320.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200],
                        blurRadius: 10.0,
                        spreadRadius: 2.5,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text('Property Details',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.w600)),
                      ),
                      // Divider(color: Colors.grey[500]),
                      Divider(color: Colors.grey[500]),

                      Padding(
                        padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
                        child: Column(
                          children: [
                            ServicePrice(
                                name: 'Rental Fee',
                                price: '159.00',
                                isTotal: false),
                            ServicePrice(
                                name: 'Security Deposit',
                                price: '100.00',
                                isTotal: false),
                            ServicePrice(
                                name: 'Service Charge',
                                price: '150.00',
                                isTotal: false),
                          ],
                        ),
                      ),

                      Divider(color: Colors.grey[500]),

                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: ServicePrice(
                            name: 'Total', price: '459.00', isTotal: true),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.0),

                Container(
                  height: 100.0,
                  width: 320.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[200],
                        blurRadius: 10.0,
                        spreadRadius: 2.5,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 8.0),
                        child: Text('Discount Payment',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.w600)),
                      ),
                      Divider(color: Colors.grey[500]),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Choose Promotion Code',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w300)),
                            Icon(Icons.arrow_forward, size: 18.0),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),

                // ***********************
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => MorePayment(),
                    ),
                  ),
                  child: TheContainer(
                    color: Theme.of(context).primaryColor,
                    textInside: 'Pay (\$189.00)',
                    height: 60.0,
                    width: 320.0,
                  ),
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
