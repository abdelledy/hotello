import 'package:flutter/material.dart';
import 'package:hotello/components/footer_icons.dart';
import 'package:hotello/components/the_container.dart';
import 'package:hotello/screens/hotel_details.dart';

class ChooseRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ------------------------------------------------------------------------
    final myContainer = Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 266.0,
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
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'King room with two beds',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Padding(
                        padding: EdgeInsets.only(right: 9.0, bottom: 14.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Private bathroom',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.grey[500],
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  'room size 40 m',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.grey[500],
                                  ),
                                ),
                              ],
                            ),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '2 Double beds',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.grey[500],
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  'breakfast available',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.grey[500],
                                  ),
                                ),
                              ],
                            ),
                            // SizedBox(height: 6.0),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                '\$99 ',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.amber,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                ' /3 nights',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey[500],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // SizedBox(height: 6.0),
                      InkWell(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (_) => HotelDetails())),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
// ------------------------------------------------------------------------
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back, color: Colors.black)),
        title: Text('Choose Room', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 14.0, 20.0, 0.0),
            child: Column(
              children: [
                Container(
                  height: 480.0,
                  color: Colors.white,
                  child: ListView(children: [
                    Column(
                      children: [
                        myContainer,
                        myContainer,
                        myContainer,
                        myContainer
                      ],
                    ),
                  ]),
                ),
              ],
            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}
