import 'package:redpositive_app_1/Screens/webinar/chat_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget create(
   { BuildContext context,
    String title,
    String name,
    String id,
    String code,
    String buttonName,
    String hintName,
    String hintId,
    String hintCode}) {
  return new SafeArea(
      child: new ListView(
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 120),
            child: new Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 35.0),
            ),
          ),
        ],
      ),
      Center(
        child: Container(
          height: 400,
          margin: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Card(
            color: Colors.white,
            elevation: 6.0,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 10.0, left: 20.0),
                      child: new Text(
                          name,
                        style: new TextStyle(
                            color: Colors.black87, fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 350,
                  margin: EdgeInsets.only(left: 10.0, top: 5.0),
                  child: new TextField(
                    decoration: InputDecoration(
                      hintText: hintName,
                      hintStyle: TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: Colors.red, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 10.0, left: 20.0),
                      child: new Text(
                        id,
                        style: new TextStyle(
                            color: Colors.black87, fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 350,
                  margin: EdgeInsets.only(left: 10.0, top: 5.0),
                  child: new TextField(
                    decoration: InputDecoration(
                      hintText: hintId,
                      hintStyle: TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: Colors.red, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 10.0, left: 20.0),
                      child: new Text(
                        code,
                        style: new TextStyle(
                            color: Colors.black87, fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 350,
                  margin: EdgeInsets.only(left: 10.0, top: 5.0),
                  child: new TextField(
                    expands: false,
                    decoration: InputDecoration(
                      hintText: hintCode,
                      hintStyle: TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: Colors.red, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: RaisedButton(
                    elevation: 10,
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen()));  },
                    child: Container(
                      width: 250,
                      child: Center(
                          child: Text(
                        buttonName,
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                    ),
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    ],
  ));
}
