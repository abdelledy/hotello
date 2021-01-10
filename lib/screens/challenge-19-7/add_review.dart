import 'package:flutter/material.dart';
import 'package:hotello/components/the_container.dart';
import 'package:hotello/components/challenge-19-7/rating_stars.dart';

class AddReview extends StatelessWidget {
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
          'Add Review',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child:
                        Text('Rate your stay', style: TextStyle(fontSize: 20))),
                // SizedBox(height: 20.0),
                Padding(
                  padding: EdgeInsets.fromLTRB(60.0, 20.0, 60.0, 40.0),
                  child: Rating(iconSize: 40.0, numColored: 3),
                ),
                // SizedBox(height: 40.0),
                Text('Your review', style: TextStyle(fontSize: 18)),
                SizedBox(height: 10.0),
                Container(
                  height: 290.0,
                  width: 320.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Write your experience here'),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Center(
                  child: TheContainer(
                    color: Theme.of(context).primaryColor,
                    textInside: 'Submit',
                    height: 50.0,
                    width: 250.0,
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
