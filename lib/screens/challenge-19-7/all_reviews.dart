import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotello/components/challenge-19-7/avatar_circles_more_reviews.dart';
import 'package:hotello/components/challenge-19-7/guest_review.dart';
import 'package:hotello/components/challenge-19-7/rating_stars.dart';

class AllReviews extends StatelessWidget {
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
          'Reviews',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(
              FontAwesomeIcons.edit,
              color: Theme.of(context).primaryColor,
              size: 18.0,
            ),
          ),
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '4.6',
                          style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Rating(numColored: 4, iconSize: 22.0),
                      ],
                    ),
                    Container(
                        height: 50.0, width: 1.0, color: Colors.grey[500]),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('2K',
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold)),
                        Text('VOTED',
                            style: TextStyle(
                                fontSize: 20.0, color: Colors.grey[400])),
                      ],
                    ),
                    Row(
                      children: [
                        AvatarCircls(
                          imageOne: 'amanda.jpg',
                          imageTwo: 'ellen.jpg',
                          imageThree: 'jesseca.jpg',
                          smalled: true,
                        ),
                        Icon(Icons.arrow_forward_ios, color: Colors.grey[300])
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15.0),
                Divider(height: 5.0, color: Colors.grey[500]),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              height: 445.0,
              child: ListView(
                children: [
                  Review(
                    date: '15 Apr ,2020',
                    imgName: 'ellen.jpg',
                    comment:
                        "This hotel is very cleen, and location is greet. Its provide a good breekfast and is very safe. just bring some things for the evening and you I have an greet stay.",
                    stars: 4,
                    userName: 'Jaklien Meru',
                  ),
                  SizedBox(height: 10.0),
                  Review(
                    date: '28 Dec 2019',
                    imgName: 'amanda.jpg',
                    comment:
                        'A hotel is beautifl and cleen with a good staf and servifs that place in a nice location we enjoy in all time in this place.',
                    stars: 3,
                    userName: 'Munro Hory',
                  ),
                  SizedBox(height: 10.0),
                  Review(
                    date: '15 Apr ,2020',
                    imgName: 'ellen.jpg',
                    comment:
                        "This hotel is very cleen, and location is greet. Its provide a good breekfast and is very safe. just bring some things for the evening and you I have an greet stay.",
                    stars: 4,
                    userName: 'Jaklien Meru',
                  ),
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
            ),
          )
        ],
      ),
    );
  }
}
