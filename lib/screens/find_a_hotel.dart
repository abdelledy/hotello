import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotello/components/the_container.dart';
import 'package:hotello/screens/choose_room.dart';
import 'package:hotello/screens/challenge-19-7/payment_method_selector.dart';
import 'package:hotello/screens/challenge-19-7/profile.dart';
import 'package:hotello/components/footer_icons.dart';

class FindHotel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _drawerLinks(String text, IconData icon) {
      return Column(
        children: [
          Row(children: [
            Icon(icon, color: Colors.white),
            SizedBox(width: 15.0),
            Text(text, style: TextStyle(fontSize: 18.0, color: Colors.white)),
          ]),
          SizedBox(height: 20.0)
        ],
      );
    }

    // ------------------------------------------------------------------------
    final myContainer = Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 230.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0.5,
              blurRadius: 0.5,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 130.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0)),
                    image: DecorationImage(
                      image: AssetImage("assets/images/room.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 12.0,
                  left: 12.0,
                  child: Container(
                    height: 20.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(7, 7, 8, 0.3),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    child: Center(
                        child: Text(
                      '700 Visited',
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.5),
                          fontSize: 12.0),
                    )),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Astan Hotel Room',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 6.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.place,
                              size: 10.0,
                              color: Theme.of(context).primaryColor),
                          SizedBox(width: 8.0),
                          Text(
                            'London, United Kingdom',
                            style: TextStyle(
                              fontSize: 10.0,
                              color: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.star, size: 18.0, color: Colors.amber),
                          SizedBox(width: 5.0),
                          Text(
                            '4.9',
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(13.0, 0.0, 0.0, 0.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              '\$99',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '/night',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.grey[500],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => PaymentMethodSelector(),
                            ),
                          ),
                          child: TheContainer(
                            color: Theme.of(context).primaryColor,
                            height: 40.0,
                            width: 120.0,
                            textInside: 'Book Now',
                            myStyle:
                                TextStyle(fontSize: 14.0, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
// ------------------------------------------------------------------------

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconTheme.of(context),
        backgroundColor: Colors.white,
        title: Text('Drawer test'),
        elevation: 0.0,
        actions: [
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => UserProfile(),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 15.0, 10.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/johny.jpg'),
                radius: 18.0,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Find A Hotel',
                              hintStyle: TextStyle(color: Colors.grey[500]),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.grey[500],
                                size: 22,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ChooseRoom(),
                            ),
                          ),
                          child: Container(
                            width: 120,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.add_to_home_screen,
                                    color: Colors.white, size: 18.0),
                                Text(
                                  'Check-in',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(width: 2.0)
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      height: 434.0,
                      color: Colors.white,
                      child: InkWell(
                        onTap: () {
                          FocusScope.of(context).requestFocus(new FocusNode());
                        },
                        child: ListView(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 15.0),
                                  child: Column(
                                    children: [
                                      myContainer,
                                      myContainer,
                                      myContainer,
                                      myContainer
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Footer()
            ],
          ),
        ],
      ),

      // Drawer ***************************************
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
        child: Container(
          height: 660.0,
          width: 250.0,
          child: Drawer(
            elevation: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 100.0,
                          width: 100.0,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 0.0,
                                right: 0.0,
                                child: CircleAvatar(
                                  radius: 50.0,
                                  backgroundImage:
                                      AssetImage("assets/images/me.jpg"),
                                ),
                              ),
                              Positioned(
                                right: 5.0,
                                bottom: 5.0,
                                child: Container(
                                  height: 20.0,
                                  width: 20.0,
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                  ),
                                  child: Icon(Icons.edit,
                                      color: Colors.white, size: 12.0),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Abdell Ed',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 3.0),
                        Text(
                          'contact@edee.com',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40.0),
                    _drawerLinks('Home', FontAwesomeIcons.home),
                    _drawerLinks('Location', FontAwesomeIcons.locationArrow),
                    _drawerLinks('Bookings', FontAwesomeIcons.solidBookmark),
                    _drawerLinks('Settings', Icons.settings),
                    _drawerLinks('Notification', Icons.notifications_active),
                    SizedBox(height: 10.0),
                    Row(children: [
                      Icon(Icons.arrow_left, color: Colors.white, size: 34.0),
                      SizedBox(width: 10.0),
                      Text(
                        'Log Out',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
