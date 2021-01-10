import 'package:flutter/material.dart';

class AvatarCircls extends StatelessWidget {
  final String imageOne;
  final String imageTwo;
  final String imageThree;
  final bool smalled;

  AvatarCircls({this.imageOne, this.imageTwo, this.imageThree, this.smalled});

  _avatarReview(String imgUrl) {
    return Container(
      height: smalled ? 30.0 : 50.0,
      width: smalled ? 30.0 : 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        border: Border.all(
          color: Colors.white,
          width: 3,
        ),
      ),
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/images/$imgUrl'),
        radius: smalled ? 18.0 : 25.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: smalled ? 30.0 : 50.0,
      width: smalled ? 60.0 : 100.0,
      child: Stack(
        children: [
          Positioned(
            child: _avatarReview(imageOne),
          ),
          Positioned(
            left: smalled ? 14.0 : 20.0,
            child: _avatarReview(imageTwo),
          ),
          Positioned(
            left: smalled ? 30 : 40.0,
            child: _avatarReview(imageThree),
          ),
        ],
      ),
    );
  }
}
