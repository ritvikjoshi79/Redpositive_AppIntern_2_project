import 'package:redpositive_app_1/Screens/joinClassroom.dart';
import 'package:redpositive_app_1/widget/createOrJoin.dart';
import 'package:flutter/material.dart';

import 'createClassroom.dart';


class Classroom extends StatefulWidget {

  @override
  _ClassroomState createState() => _ClassroomState();
}

class _ClassroomState extends State<Classroom> {
  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        backgroundColor: Colors.red,
        body: createOrJoin(
            context: context,
            joinName: "Join a Classroom",
            createName: "Create a Classroom",
            createRoute: CreateClassroom(),
            joinRoute: JoinClassroom(),
        )
      );
  }
}
