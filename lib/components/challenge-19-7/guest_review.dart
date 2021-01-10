import 'package:flutter/material.dart';
import 'package:hotello/components/challenge-19-7/rating_stars.dart';

class Review extends StatelessWidget {
  final String userName;
  final int stars;
  final String imgName;
  final String comment;
  final String date;

  Review({this.userName, this.stars, this.imgName, this.comment, this.date});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Container(
        height: 200.0,
        width: 300.0,
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
        child: Stack(
          children: [
            Positioned(
              top: 20.0,
              right: 10.0,
              child: Text(date, style: TextStyle(color: Colors.grey[400])),
            ),
            Positioned(
              top: 20.0,
              left: 10.0,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/$imgName'),
                radius: 20.0,
              ),
            ),
            Positioned(
              top: 20.0,
              left: 60.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Rating(numColored: 4, iconSize: 22.0),
                  SizedBox(height: 10.0),
                  Container(
                    height: 100.0,
                    width: 200.0,
                    child: Text(
                      comment,
                      style: TextStyle(
                        fontSize: 13.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
