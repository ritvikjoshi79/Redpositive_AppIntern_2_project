import 'package:redpositive_app_1/widget/join.dart';
import 'package:flutter/material.dart';


class JoinClassroom extends StatefulWidget {
    @override
    _JoinClassroomState createState() => _JoinClassroomState();
}

class _JoinClassroomState extends State<JoinClassroom> {
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
            body: join(
                context: context,
                title: "Join a Classrom",
                id: "Classroom ID",
                code: "Classroom Code",
                hintId: "Enter a Classroom id",
                hintCode: "Enter a classroom code",
                buttonName: "Join Classroom"
            )
        );
    }
}
