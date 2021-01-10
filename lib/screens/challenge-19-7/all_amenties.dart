import 'package:flutter/material.dart';
import 'package:hotello/components/the_container.dart';
import 'package:hotello/components/challenge-19-7/my_icon.dart';
import 'package:hotello/screens/challenge-19-7/add_review.dart';
import 'package:evil_icons_flutter/evil_icons_flutter.dart';

class AllAmenties extends StatelessWidget {
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
          'Facilities & Amenties',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Econ(clicked: 1, name: 'Camera', icon: EvilIcons.camera),
                    Econ(clicked: 0, name: 'Cart', icon: EvilIcons.cart),
                    Econ(
                        clicked: 1, name: 'Envelope', icon: EvilIcons.envelope),
                    Econ(
                        clicked: 1, name: 'Calendar', icon: EvilIcons.calendar),
                  ],
                ),
                Column(
                  children: [
                    Econ(clicked: 0, name: 'Lock', icon: EvilIcons.lock),
                    Econ(clicked: 0, name: 'Play', icon: EvilIcons.play),
                    Econ(clicked: 0, name: 'Gear', icon: EvilIcons.gear),
                    Econ(clicked: 0, name: 'Chart', icon: EvilIcons.chart),
                  ],
                ),
                Column(
                  children: [
                    Econ(clicked: 1, name: 'User', icon: EvilIcons.user),
                    Econ(clicked: 0, name: 'Trash', icon: EvilIcons.trash),
                    Econ(
                        clicked: 1, name: 'Share', icon: EvilIcons.share_apple),
                    Econ(clicked: 1, name: 'Trophy', icon: EvilIcons.trophy),
                  ],
                ),
                Column(
                  children: [
                    Econ(clicked: 1, name: 'Image', icon: EvilIcons.image),
                    Econ(clicked: 0, name: 'Archive', icon: EvilIcons.archive),
                    Econ(clicked: 1, name: 'Bell', icon: EvilIcons.bell),
                    Econ(clicked: 0, name: 'Retweet', icon: EvilIcons.retweet),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40.0),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => AddReview(),
                ),
              ),
              child: TheContainer(
                color: Theme.of(context).primaryColor,
                textInside: 'Done',
                height: 50.0,
                width: 250.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
