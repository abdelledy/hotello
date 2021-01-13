import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotello/components/challenge-19-7/text_field.dart';
import 'package:hotello/components/challenge-19-7/service_price_row.dart';
import 'package:hotello/screens/challenge-19-7/successful_booking.dart';
import 'package:hotello/components/the_container.dart';

class BookNow extends StatefulWidget {
  @override
  _BookNowState createState() => _BookNowState();
}

class _BookNowState extends State<BookNow> {
  @override
  Widget build(BuildContext context) {
    //***************** */
    DateTime currentDate = DateTime.now();
    Future<void> _selectDate(BuildContext context) async {
      final DateTime pickedDate = await showDatePicker(
          context: context,
          initialDate: currentDate,
          firstDate: DateTime(2015),
          lastDate: DateTime(2050));
      if (pickedDate != null && pickedDate != currentDate)
        setState(() {
          currentDate = pickedDate;
        });
    }

    final myStyle = TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    );
    final aStyle = TextStyle(
        fontSize: 13, color: Colors.grey[500], fontWeight: FontWeight.w600);
    final myDecoration = BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    );

    final _pickDate = InkWell(
      onTap: () => _selectDate(context),
      child: Container(
        height: 50.0,
        width: 147.0,
        decoration: myDecoration,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.calendar_today, size: 16, color: Colors.grey[500]),
            Text('20 may -25 Feb', style: aStyle)
          ],
        ),
      ),
    );
    TextStyle _stelee = TextStyle(
      fontSize: 17.0,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
    _buildIcon(IconData icon, String text, Color color, String price) {
      return Column(
        children: [
          Icon(icon, color: color, size: 15.0),
          SizedBox(height: 5.0),
          Text(text, style: TextStyle(fontSize: 14.0, color: Colors.grey[600])),
          SizedBox(height: 10.0),
          Text('\$$price',
              style: TextStyle(fontSize: 14.0, color: Colors.grey[600])),
        ],
      );
    }

    //***************** */
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
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyTextField(width: 150.0, text: 'First Name'),
                    MyTextField(width: 150.0, text: 'Last Name'),
                  ],
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyTextField(width: 150.0, text: 'Email'),
                    MyTextField(width: 150.0, text: 'Phone Number'),
                  ],
                ),
                SizedBox(height: 25.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Check in', style: myStyle),
                        SizedBox(height: 10.0),
                        _pickDate
                      ],
                    ),
                    SizedBox(width: 26.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Check out', style: myStyle),
                        SizedBox(height: 10.0),
                        _pickDate
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 180.0,
                  width: 320.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    border: Border.all(
                      color: Colors.grey[300],
                      width: 1,
                    ),
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
                SizedBox(height: 20.0),
                Text('Aditional Service', style: _stelee),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildIcon(FontAwesomeIcons.dumbbell, 'Gym',
                        Colors.purpleAccent, '50.00'),
                    _buildIcon(FontAwesomeIcons.fan, 'Spa', Colors.blueAccent,
                        '25.00'),
                    _buildIcon(Icons.local_dining, 'Restaurant',
                        Colors.orangeAccent, '60.00'),
                    _buildIcon(Icons.local_parking, 'Parking',
                        Colors.pinkAccent, '50.00'),
                  ],
                ),
                SizedBox(height: 30.0),
                Text('Payment Details', style: _stelee),
                SizedBox(height: 20.0),
                Divider(color: Colors.grey[500]),
                SizedBox(height: 20.0),
                ServicePrice(
                    name: 'Classic Flat Room', price: '159.00', isTotal: false),
                ServicePrice(
                    name: 'Security Deposit', price: '100.00', isTotal: false),
                ServicePrice(name: 'Spa', price: '25.00', isTotal: false),
                SizedBox(height: 20.0),
                Divider(color: Colors.grey[500]),
                SizedBox(height: 12.0),
                ServicePrice(name: 'Total', price: '199.00', isTotal: true),
                SizedBox(height: 20.0),
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Done(),
                    ),
                  ),
                  child: TheContainer(
                    color: Theme.of(context).primaryColor,
                    textInside: 'Payment',
                    height: 50.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
