import 'package:flutter/material.dart';
import 'package:hotello/components/the_container.dart';
import 'package:hotello/screens/choose_room.dart';
import 'package:hotello/screens/challenge-19-7/payment_method_selector.dart';
import 'package:hotello/components/footer_icons.dart';

class FindHotel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        backgroundColor: Colors.white,
        leading: Icon(Icons.sort, color: Colors.black, size: 30.0),
        elevation: 0.0,
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 15.0, 10.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/johny.jpg'),
              radius: 18.0,
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
    );
  }
}
