import 'package:redpositive_app_1/widget/create.dart';
import 'package:flutter/material.dart';


class CreateClassroom extends StatefulWidget {
  @override
  _CreateClassroomState createState() => _CreateClassroomState();
}

class _CreateClassroomState extends State<CreateClassroom> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("RedPostive    Welcome User", style:  TextStyle(color: Colors.red),
        ),
        actions: <Widget>[
          Row(
            children: <Widget>[
              Text("Pricing", style: new TextStyle(color: Colors.black87),),
              SizedBox(width: 10.0,),
              Text("About Us", style: new TextStyle(color: Colors.black87),),
              SizedBox(width: 10.0,),
              Text("Logout", style: new TextStyle(color: Colors.black87),),
            ],
          )
        ],
        backgroundColor: Colors.white,
        brightness: Brightness.light,
      ),
      backgroundColor: Colors.red,
      body: create(
          context: context,
        title: "Create a Classroom",
        name: "Classroom Name",
        id:  "Classroom ID",
        code: "Classroom code",
        hintCode: "Enter Classroom code",
        hintId: "enter  classroom id",
        hintName: "enter a classroom name",
          buttonName: "Create Classroom",
      )
    );
  }
}
