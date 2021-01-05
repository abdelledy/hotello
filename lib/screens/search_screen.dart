import 'package:flutter/material.dart';
import 'package:hotello/components/the_container.dart';
import 'package:hotello/components/footer_icons.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> _locations = ['01', '02', '03', '04'];
  String _selectedLocation;
  int _currentGuests = 1;
  String dropdownValue = 'One';
  String zero() {
    if (_currentGuests < 10) {
      return '0';
    } else {
      return '';
    }
  }

  @override
  Widget build(BuildContext context) {
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
      fontSize: 13,
      color: Colors.grey[500],
      fontWeight: FontWeight.w600,
    );
    final myDecoration = BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      // border: Border.all(color: Colors.grey[300], width: 1),
    );

    final _pickDate = InkWell(
      onTap: () => _selectDate(context),
      child: Container(
        height: 50.0,
        width: 152.0,
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

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          InkWell(
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
            },
            child: Column(
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      height: 574.0,
                    ),
                    Positioned(
                      child: Container(
                        height: 214.0,
                        width: 360.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/pic.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.fromLTRB(80.0, 10.0, 80.0, 10.0),
                              child: Image.asset('assets/images/logo.png'),
                            ),
                            Text('Hotel Booking',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                )),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 194.0,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(23.0),
                              topRight: Radius.circular(23.0),
                            )),
                        height: 400.0,
                        width: 360.0,
                        child: ListView(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 15.0),
                              child: Column(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Select City', style: myStyle),
                                      SizedBox(height: 10.0),
                                      Container(
                                        height: 50.0,
                                        decoration: myDecoration,
                                        child: TextField(
                                          style: aStyle,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            labelText: 'User name',
                                            prefixIcon: Icon(
                                              Icons.search,
                                              color: Colors.grey[500],
                                              size: 22,
                                            ),
                                            labelStyle: aStyle,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10.0),
                                      Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Check in', style: myStyle),
                                              SizedBox(height: 10.0),
                                              _pickDate
                                            ],
                                          ),
                                          SizedBox(width: 26.0),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Check out', style: myStyle),
                                              SizedBox(height: 10.0),
                                              _pickDate
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10.0),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Guests', style: myStyle),
                                              SizedBox(height: 10.0),
                                              Container(
                                                height: 50.0,
                                                width: 152.0,
                                                decoration: myDecoration,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          if (_currentGuests >
                                                              1)
                                                            _currentGuests--;
                                                        });
                                                      },
                                                      child: Container(
                                                        height: 20.0,
                                                        width: 20.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          5.0)),
                                                          border: Border.all(
                                                            color: Colors
                                                                .grey[400],
                                                            width: 1,
                                                          ),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            '—',
                                                            style: TextStyle(
                                                                fontSize: 12.0),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      zero() +
                                                          '${_currentGuests.toString()}',
                                                      style: TextStyle(
                                                          fontSize: 15.0),
                                                    ),
                                                    InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          _currentGuests++;
                                                        });
                                                      },
                                                      child: Container(
                                                        height: 20.0,
                                                        width: 20.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          5.0)),
                                                          border: Border.all(
                                                            color: Colors
                                                                .grey[400],
                                                            width: 1,
                                                          ),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            '+',
                                                            style: TextStyle(
                                                                fontSize: 12.0),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: 30.0),
                                            ],
                                          ),
                                          SizedBox(width: 26.0),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Rooms', style: myStyle),
                                              SizedBox(height: 10.0),
                                              Container(
                                                height: 50.0,
                                                width: 152.0,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 20),
                                                decoration: myDecoration,
                                                child: Row(
                                                  children: [
                                                    DropdownButton(
                                                      underline: SizedBox(),
                                                      hint: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                right: 70.0),
                                                        child: Text(
                                                          '01',
                                                          style: TextStyle(
                                                              fontSize: 15.0),
                                                        ),
                                                      ),
                                                      value: _selectedLocation,
                                                      onChanged: (newValue) {
                                                        setState(() {
                                                          _selectedLocation =
                                                              newValue;
                                                        });
                                                      },
                                                      items: _locations
                                                          .map((location) {
                                                        return DropdownMenuItem(
                                                          child: new Text(
                                                              location),
                                                          value: location,
                                                        );
                                                      }).toList(),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 20.0, right: 20.0),
                                    child: TheContainer(
                                      color: Theme.of(context).primaryColor,
                                      textInside: 'Search',
                                      height: 50.0,
                                    ),
                                  ),
                                  SizedBox(height: 20.0),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 66,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 0.5, // soften the shadow
                        // spreadRadius: 1.0, //extend the shadow
                        offset: Offset(
                          0.0, // Move to right 10  horizontally
                          1.0, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        SizedBox(height: 6.0),
                        Footer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
