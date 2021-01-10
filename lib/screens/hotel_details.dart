import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotello/components/the_container.dart';
import 'package:hotello/screens/challenge-19-7/settings.dart';
import 'package:hotello/screens/challenge-19-7/all_amenties.dart';

class HotelDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Icon _ic = Icon(Icons.star, color: Colors.amber, size: 16.0);
    TextStyle _stelee = TextStyle(
      fontSize: 17.0,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );
    _colomy(String text) {
      return Column(
        children: [
          SizedBox(height: 14.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text, style: _stelee),
              Icon(
                Icons.arrow_forward_ios,
                size: 20.0,
                color: Colors.grey[700],
              ),
            ],
          ),
          SizedBox(height: 14.0),
          Divider(height: 5.0, color: Colors.grey[500]),
        ],
      );
    }

    _buildIcon(IconData icon, String text, Color color) {
      return Column(
        children: [
          Icon(icon, color: color, size: 15.0),
          SizedBox(height: 5.0),
          Text(text, style: TextStyle(fontSize: 14.0, color: Colors.grey[600])),
        ],
      );
    }

    _myCon(String first, String second) {
      return Container(
        width: 150.0,
        height: 60.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          border: Border.all(
            color: Colors.grey[300],
            width: 1,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                first,
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 11.0,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                second,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: 360.0,
        height: 640.0,
        color: Colors.amber,
        child: Stack(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 290.0,
                    width: 360.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/hoo.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 570.0,
              width: 360.0,
              child: Stack(
                children: [
                  Positioned(
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: [
                        Column(
                          children: [
                            Stack(
                              children: [
                                Positioned(
                                  child: Container(
                                    height: 400.0,
                                    width: 360.0,
                                  ),
                                ),
                                Positioned(
                                  bottom: 0.0,
                                  child: Container(
                                    height: 140.0,
                                    width: 360.0,
                                    color: Colors.white,
                                  ),
                                ),
                                Positioned(
                                  bottom: 5.0,
                                  right: 20.0,
                                  child: Container(
                                    height: 235.0,
                                    width: 320.0,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 0.5,
                                          blurRadius: 0.5,
                                          offset: Offset(0, 1),
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text('Sheraton Hanoi Hotel',
                                                      style: TextStyle(
                                                          fontSize: 22.0)),
                                                  SizedBox(height: 10.0),
                                                  Text(
                                                      '124, Marbu Street, London, II',
                                                      style: TextStyle(
                                                          color: Colors
                                                              .grey[500])),
                                                  SizedBox(height: 4.0),
                                                  Row(
                                                    children: [
                                                      _ic,
                                                      _ic,
                                                      _ic,
                                                      _ic,
                                                      _ic,
                                                      Text(
                                                        ' 4.5',
                                                        style: TextStyle(
                                                            fontSize: 14.0),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Text('\$85.00',
                                                      style: TextStyle(
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      )),
                                                  Text('per night',
                                                      style: TextStyle(
                                                          fontSize: 13.0))
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 15.0),
                                          Text('Amenties', style: _stelee),
                                          SizedBox(height: 10.0),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              _buildIcon(
                                                  FontAwesomeIcons.dumbbell,
                                                  'Gym',
                                                  Colors.purpleAccent),
                                              _buildIcon(FontAwesomeIcons.fan,
                                                  'Spa', Colors.blueAccent),
                                              _buildIcon(
                                                  Icons.local_dining,
                                                  'Restaurant',
                                                  Colors.orangeAccent),
                                              _buildIcon(Icons.local_parking,
                                                  'Parking', Colors.pinkAccent),
                                            ],
                                          ),
                                          SizedBox(height: 20.0),
                                          InkWell(
                                            onTap: () => Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (_) => AllAmenties(),
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'See all amenties',
                                                  style: TextStyle(
                                                      fontSize: 17.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Theme.of(context)
                                                          .primaryColor),
                                                ),
                                                Container(
                                                  height: 30.0,
                                                  width: 30.0,
                                                  decoration: BoxDecoration(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                10.0)),
                                                  ),
                                                  child: Icon(
                                                      Icons.arrow_forward_ios,
                                                      color: Colors.white,
                                                      size: 16.0),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              height: 700.0,
                              width: 360.0,
                              color: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 15.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Booking Dates And Details',
                                            style: _stelee),
                                        Text(
                                          'Change',
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        _myCon('May 11 2020',
                                            'Check In - After 12PM'),
                                        _myCon('May 15 2020',
                                            'Check Out - Befor 11PM')
                                      ],
                                    ),
                                    SizedBox(height: 30.0),
                                    Text('Location', style: _stelee),
                                    SizedBox(height: 8.0),
                                    Row(
                                      children: [
                                        Icon(Icons.location_on,
                                            size: 20.0,
                                            color: Colors.grey[500]),
                                        Text(' 124, Marbu Street, London, II',
                                            style: TextStyle(
                                                color: Colors.grey[500])),
                                      ],
                                    ),
                                    SizedBox(height: 14.0),
                                    Container(
                                      height: 170.0,
                                      width: 320.0,
                                      decoration: BoxDecoration(
                                        color: Colors.cyanAccent,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10.0),
                                        ),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/map.jpg"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 30.0),
                                    Divider(
                                        height: 5.0, color: Colors.grey[500]),
                                    _colomy('Food & Drinks'),
                                    _colomy('Service'),
                                    _colomy('Hotel rules'),
                                    _colomy('Contact us'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 24.0,
              child: Container(
                height: 60.0,
                width: 360.0,
                child: Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(Icons.arrow_back,
                              color: Colors.white, size: 18.0)),
                      Row(
                        children: [
                          Icon(Icons.favorite_border,
                              color: Colors.white, size: 18.0),
                          SizedBox(width: 18.0),
                          Icon(Icons.open_in_browser,
                              color: Colors.white, size: 18.0),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              child: Container(
                height: 95.0,
                width: 360.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 0.5,
                      spreadRadius: 0.5,
                      offset: Offset(
                        1.0,
                        1.0,
                      ),
                    )
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                '\$450',
                                style: TextStyle(
                                    fontSize: 22.0,
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                '  /4 nights',
                                style: TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.grey[400],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8.0),
                          Text('May 11 - May 15'),
                        ],
                      ),
                      SizedBox(width: 10.0),
                      InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => SettingsScreen(),
                          ),
                        ),
                        child: TheContainer(
                            width: 190.0,
                            height: 65.0,
                            textInside: 'Choose Rooms',
                            color: Theme.of(context).primaryColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
