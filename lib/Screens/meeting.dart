import 'package:redpositive_app_1/Screens/joinMeeting.dart';
import 'package:redpositive_app_1/widget/createOrJoin.dart';
import 'package:flutter/material.dart';

import 'createMeeting.dart';


class Meeting extends StatefulWidget {

    @override
    _MeetingState createState() => _MeetingState();
}

class _MeetingState extends State<Meeting> {
    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            backgroundColor: Colors.red,
            body: createOrJoin(
                context: context,
                joinName: "Join a Meeting",
                createName: "Create a Meeting",
                createRoute: CreateMeeting(),
                joinRoute: JoinMeeting(),
            )
        );
    }
}
