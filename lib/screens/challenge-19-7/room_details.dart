import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotello/components/challenge-19-7/guest_review.dart';
import 'package:hotello/components/challenge-19-7/avatar_circles_more_reviews.dart';
import 'package:hotello/components/the_container.dart';
import 'package:hotello/screens/challenge-19-7/all_reviews.dart';
import 'package:hotello/screens/challenge-19-7/book_now.dart';
import 'package:hotello/screens/challenge-19-7/more_payment.dart';
import 'package:hotello/screens/challenge-19-7/all_amenties.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RoomDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle _stelee = TextStyle(
      fontSize: 17.0,
      color: Colors.black,
      fontWeight: FontWeight.w500,
    );

    _buildIcon(IconData icon, String text, Color color) {
      return Column(
        children: [
          Icon(icon, color: color, size: 20.0),
          SizedBox(height: 5.0),
          Text(text, style: TextStyle(fontSize: 14.0, color: Colors.blueGrey)),
        ],
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: 360.0,
        height: 640.0,
        // color: Colors.amber,
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
                                    height: 290.0,
                                    width: 360.0,
                                  ),
                                ),
                                Positioned(
                                  bottom: 0.0,
                                  child: Container(
                                    height: 20.0,
                                    width: 360.0,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(10.0),
                                            topRight: Radius.circular(10.0))),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 1300.0,
                              width: 360.0,
                              color: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Standar Single Room', style: _stelee),
                                    SizedBox(height: 8.0),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Icon(Icons.star,
                                                    color: Colors.amber),
                                                Text('  4.5  -  ',
                                                    style: TextStyle(
                                                        fontSize: 16.0)),
                                                Text('superhost'),
                                              ],
                                            ),
                                            SizedBox(height: 8.0),
                                            Row(
                                              children: [
                                                Text(
                                                  '\$150 ',
                                                  style: TextStyle(
                                                    fontSize: 20.0,
                                                    color: Colors.orange,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  ' per night',
                                                  style: TextStyle(
                                                      color: Colors.grey[400],
                                                      fontSize: 17.0),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        InkWell(
                                          onTap: () => Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (_) => BookNow(),
                                            ),
                                          ),
                                          child: TheContainer(
                                              color: Colors.orange,
                                              textInside: 'Book Now',
                                              height: 50.0,
                                              width: 150.0),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20.0),
                                    Divider(
                                        height: 5.0, color: Colors.grey[300]),
                                    SizedBox(height: 20.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        _buildIcon(FontAwesomeIcons.bed,
                                            '3 beds', Colors.blueGrey),
                                        _buildIcon(FontAwesomeIcons.bath,
                                            '2 Bath', Colors.blueGrey),
                                        _buildIcon(FontAwesomeIcons.userFriends,
                                            '3 guestes', Colors.blueGrey),
                                        _buildIcon(
                                            FontAwesomeIcons.vectorSquare,
                                            '16 mxm',
                                            Colors.blueGrey),
                                      ],
                                    ),
                                    SizedBox(height: 20.0),
                                    Divider(
                                        height: 5.0, color: Colors.grey[300]),
                                    SizedBox(height: 20.0),
                                    Text('Details', style: _stelee),
                                    SizedBox(height: 8.0),
                                    Text(
                                      "Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book.",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.grey[500],
                                      ),
                                    ),
                                    SizedBox(height: 20.0),
                                    Text('Amenties', style: _stelee),
                                    SizedBox(height: 8.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        TheContainer(
                                          color: Colors.grey[200],
                                          height: 30.0,
                                          width: 40.0,
                                          textInside: 'Wifi',
                                          myStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13.0),
                                        ),
                                        TheContainer(
                                          color: Colors.grey[200],
                                          height: 30.0,
                                          width: 30.0,
                                          textInside: 'TV',
                                          myStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13.0),
                                        ),
                                        TheContainer(
                                          color: Colors.grey[200],
                                          height: 30.0,
                                          width: 100.0,
                                          textInside: 'Air Conditions',
                                          myStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13.0),
                                        ),
                                        TheContainer(
                                          color: Colors.grey[200],
                                          height: 30.0,
                                          width: 130.0,
                                          textInside: 'Attach Bathroom',
                                          myStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 13.0),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 8.0),
                                    InkWell(
                                      onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => AllAmenties(),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'See all amenties',
                                            style: TextStyle(
                                                fontSize: 17.0,
                                                fontWeight: FontWeight.w500,
                                                color: Theme.of(context)
                                                    .primaryColor),
                                          ),
                                          Container(
                                            height: 30.0,
                                            width: 30.0,
                                            decoration: BoxDecoration(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.0)),
                                            ),
                                            child: Icon(Icons.arrow_forward_ios,
                                                color: Colors.white,
                                                size: 16.0),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 20.0),
                                    Container(
                                      height: 200.0,
                                      width: 320.0,
                                      color: Colors.grey[100],
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            bottom: 0.0,
                                            right: 0.0,
                                            child: Container(
                                              height: 60.0,
                                              width: 110.0,
                                              child: SvgPicture.asset(
                                                  'assets/svg/question.svg'),
                                            ),
                                          ),
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.all(30.0),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    'Do you need any help?',
                                                    style: TextStyle(
                                                      fontSize: 24.0,
                                                      // color: Colors.grey[500],
                                                    ),
                                                  ),
                                                  SizedBox(height: 15.0),
                                                  Text(
                                                    'Ask our assistant about amenties,\npolicies, check-in times and more',
                                                    style: TextStyle(
                                                      fontSize: 15.0,
                                                      color: Colors.grey[500],
                                                    ),
                                                  ),
                                                  SizedBox(height: 20.0),
                                                  Container(
                                                    height: 40.0,
                                                    width: 120.0,
                                                    decoration: BoxDecoration(
                                                      // color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  20.0)),
                                                      border: Border.all(
                                                        color: Theme.of(context)
                                                            .primaryColor,
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        'Chat Now',
                                                        style: TextStyle(
                                                          fontSize: 18.0,
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 20.0),
                                    Text('Reviews', style: _stelee),
                                    SizedBox(height: 10.0),
                                    // Review(),
                                    Column(
                                      children: [
                                        Review(
                                            date: '15 Apr ,2020',
                                            imgName: 'ellen.jpg',
                                            comment:
                                                "This hotel is very cleen, and location is greet. Its provide a good breekfast and is very safe. just bring some things for the evening and you I have an greet stay.",
                                            stars: 4,
                                            userName: 'Jaklien Meru'),
                                        SizedBox(height: 10.0),
                                        Review(
                                          date: '28 Dec 2019',
                                          imgName: 'amanda.jpg',
                                          comment:
                                              'A hotel is beautifl and cleen with a good staf and servifs that place in a nice location we enjoy in all time in this place.',
                                          stars: 3,
                                          userName: 'Munro Hory',
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20.0),
                                    InkWell(
                                      onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => AllReviews(),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              AvatarCircls(
                                                  smalled: false,
                                                  imageOne: 'amanda.jpg',
                                                  imageTwo: 'ellen.jpg',
                                                  imageThree: 'jesseca.jpg'),
                                              Text(
                                                '+50 reviews',
                                                style: TextStyle(
                                                  fontSize: 22.0,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            height: 30.0,
                                            width: 30.0,
                                            decoration: BoxDecoration(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10.0)),
                                            ),
                                            child: Icon(Icons.arrow_forward_ios,
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
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 0.3),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Center(
                            child: Icon(Icons.favorite_border,
                                color: Theme.of(context).primaryColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // SizedBox(height: 20.0),
            Positioned(
              bottom: 0.0,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: InkWell(
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
