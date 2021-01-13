import 'package:flutter/material.dart';
import 'package:hotello/components/the_container.dart';

class SearchHotel extends StatefulWidget {
  @override
  _SearchHotelState createState() => _SearchHotelState();
}

class _SearchHotelState extends State<SearchHotel> {
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
          'Hotel Search',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        height: 616.0,
        width: 360.0,
        child: Stack(
          children: [
            Container(
              height: 60.0,
              width: 360.0,
              color: Colors.white,
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              child: Container(
                height: 515.0,
                width: 360.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/map.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 15.0,
              right: 40.0,
              child: Container(
                height: 190.0,
                width: 280.0,
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
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: Colors.grey[100], width: 1),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 3.0),
                          child: TextField(
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey[300],
                              fontWeight: FontWeight.w600,
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "New York",
                              hintStyle: TextStyle(color: Colors.grey[500]),
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.search,
                                  color: Colors.grey[500],
                                  size: 22,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Row(
                        children: [
                          InkWell(
                            onTap: () => _selectDate(context),
                            child: Container(
                              height: 50.0,
                              width: 152.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                border: Border.all(
                                    color: Colors.grey[100], width: 1),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.calendar_today,
                                      size: 16, color: Colors.grey[500]),
                                  Text(
                                    '20 may -25 Feb',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey[500],
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Container(
                            height: 50.0,
                            width: 94.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              border:
                                  Border.all(color: Colors.grey[100], width: 1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.person_outline,
                                    size: 16, color: Colors.grey[500]),
                                Text(
                                  '3 Guests',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.grey[500],
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(height: 15.0),

                      SizedBox(height: 15.0),
                      TheContainer(
                        color: Theme.of(context).primaryColor,
                        height: 40.0,
                        textInside: 'Search',
                      )
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
