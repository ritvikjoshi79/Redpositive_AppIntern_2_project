import 'package:flutter/material.dart';

Widget createOrJoin(
    {BuildContext context,
    String joinName,
    String createName,
    joinRoute,
    createRoute}) {

  return new Column(
    children: <Widget>[

      Center(
        child: Container(
          margin: EdgeInsets.only(top: 250.0),
          child: RaisedButton(
            elevation: 10,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => createRoute));
            },
            child: Container(
              width: 250,
              child: Center(
                  child: Text(
                createName,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              )),
            ),
            color: Colors.white,
          ),
        ),
      ),
      Center(
        child: Container(
          margin: EdgeInsets.only(top: 30.0),
          child: RaisedButton(
            elevation: 10,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => joinRoute));
            },
            child: Container(
              width: 250,
              child: Center(
                  child: Text(
                joinName,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),
              )),
            ),
            color: Colors.white,
          ),
        ),
      ),
    ],
  );
}
