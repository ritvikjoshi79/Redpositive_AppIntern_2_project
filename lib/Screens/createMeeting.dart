import 'package:redpositive_app_1/widget/create.dart';
import 'package:flutter/material.dart';

class CreateMeeting extends StatefulWidget {
  @override
  _CreateMeetingState createState() => _CreateMeetingState();
}

class _CreateMeetingState extends State<CreateMeeting> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "RedPostive",
          style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold, fontSize: 16.0), textAlign: TextAlign.left,
        ),
        actions: <Widget>[
          Row(
            children: <Widget>[
              FlatButton(
                  onPressed: () {},
                child: Text(
                  "Pricing",
                  style: new TextStyle(color: Colors.black87, fontSize: 12.0),
                ),
              ),

              FlatButton(
                  onPressed: () {},
                  child: Text(
                  "About Us",
                  style: new TextStyle(color: Colors.black87, fontSize: 12.0),
                ),
              ),

              FlatButton(
                  onPressed: () {},
                  child: Text(
                  "Logout",
                  style: new TextStyle(color: Colors.black87, fontSize: 12.0),
                ),
              ),
            ],
          )
        ],
        backgroundColor: Colors.white,
        brightness: Brightness.light,
      ),
      backgroundColor: Colors.red[900],
      body: create(
          context: context,
          title: "Create a Meeting",
          name: "MEETING NAME",
          id: "MEETING ID",
          code: "MEETING CODE",
          buttonName: "Create Meeting",
         hintName:  "Enter classroom name",
         hintId:  "Enter meeting id",
          hintCode: "Enter meeting code"
      )
    );
  }
}
