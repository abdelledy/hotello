import 'package:flutter/material.dart';
import 'package:hotello/components/footer_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotello/screens/find_a_hotel.dart';
import 'package:hotello/screens/challenge-19-7/sort_by.dart';
import 'package:hotello/screens/challenge-19-7/room_details.dart';

class ResulsScreen extends StatefulWidget {
  @override
  _ResulsScreenState createState() => _ResulsScreenState();
}

class _ResulsScreenState extends State<ResulsScreen> {
  final aStyle = TextStyle(
    fontSize: 13,
    color: Colors.grey[500],
    fontWeight: FontWeight.w600,
  );

  _filters(String name, IconData icon) {
    return Container(
      width: 100,
      height: 40.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        border: Border.all(
          color: Colors.grey[300],
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(icon, color: Colors.grey[500], size: 18.0),
          Text(
            name,
            style: TextStyle(
                color: Colors.grey[500],
                fontSize: 14.0,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(width: 2.0)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final myContainer = Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => RoomDetails(),
          ),
        ),
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
                        image: AssetImage("assets/images/pic.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 12.0,
                    right: 12.0,
                    child: Container(
                      height: 25.0,
                      width: 25.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.favorite,
                          size: 16.0,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.star,
                            size: 18.0, color: Theme.of(context).primaryColor),
                        SizedBox(width: 3.0),
                        Text(
                          '4.5',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        SizedBox(width: 15.0),
                        Text(
                          '88 Reviews',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Classic Flat Room',
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                        Container(
                          height: 25.0,
                          width: 25.0,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Icon(Icons.arrow_right, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blueGrey,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0.0,
      ),
      body: InkWell(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      Container(
                        height: 100.0,
                        child: Column(
                          children: [
                            Container(
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                border: Border.all(
                                  color: Colors.grey[300],
                                  width: 1,
                                ),
                              ),
                              child: Padding(
                                padding:
                                    EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 3.0),
                                child: TextField(
                                  style: aStyle,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "New York",
                                    hintStyle:
                                        TextStyle(color: Colors.blueGrey),
                                    suffixIcon: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.search,
                                        color: Colors.blueGrey,
                                        size: 22,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => FindHotel()),
                                  ),
                                  child: _filters('Filter', Icons.tune),
                                ),
                                InkWell(
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => SortBy(),
                                    ),
                                  ),
                                  child:
                                      _filters('Sort', FontAwesomeIcons.sort),
                                ),
                                _filters('Map', Icons.place),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 394.0,
                        child: ListView(
                          children: [
                            Column(
                              children: [
                                myContainer,
                                myContainer,
                                myContainer,
                                myContainer,
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Footer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
