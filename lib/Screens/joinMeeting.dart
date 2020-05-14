import 'package:redpositive_app_1/widget/create.dart';
import 'package:redpositive_app_1/widget/join.dart';
import 'package:flutter/material.dart';

class JoinMeeting extends StatefulWidget {
  @override
  _JoinMeetingState createState() => _JoinMeetingState();
}

class _JoinMeetingState extends State<JoinMeeting> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(
            "RedPostive",
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 15.0),
            textAlign: TextAlign.left,
          ),
          actions: <Widget>[
            Row(
              children: <Widget>[
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Pricing",
                    style: new TextStyle(color: Colors.black87),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "About Us",
                    style: new TextStyle(color: Colors.black87),
                  ),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text(
                    "Logout",
                    style: new TextStyle(color: Colors.black87),
                  ),
                ),
              ],
            )
          ],
          backgroundColor: Colors.white,
          brightness: Brightness.light,
        ),
        backgroundColor: Colors.red[900],
        body: join(
            context: context,
            title: "Join a Meeting",
            id: "MEETING ID",
            code: "MEETING CODE",
            hintCode: "Enter meeting code",
            hintId: "Enter meeting id",
            buttonName: "Join Meeting"));
  }
}
