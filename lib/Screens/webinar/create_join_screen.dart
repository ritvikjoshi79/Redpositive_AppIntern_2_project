import 'chat_screen.dart';
import 'package:flutter/material.dart';

class CreateJoinScreen extends StatefulWidget {
  @override
  _CreateJoinScreenState createState() => _CreateJoinScreenState();
}

class _CreateJoinScreenState extends State<CreateJoinScreen> {
  bool status = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          "RedPositive",
          style: TextStyle(
            fontSize: 18,
            color: Colors.red[800],
            fontWeight: FontWeight.bold,
            fontFamily: 'Spartan',
          ),
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Text(
              "Pricing",
              style: TextStyle(fontSize: 12, fontFamily: 'Poppins'),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              "About Us",
              style: TextStyle(fontSize: 12, fontFamily: 'Poppins'),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              "Log Out",
              style: TextStyle(fontSize: 12, fontFamily: 'Poppins'),
            ),
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Text(
                status ? "Create a Webinar" : "Join a Webinar",
                textScaleFactor: 2,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Spartan",
                    fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(.3),
                          offset: Offset(0.0, 8.0),
                          blurRadius: 8.0)
                    ]),
                child: Column(
                  children: <Widget>[
                    status
                        ? inputField("WEBINAR NAME", "Enter webinar name..")
                        : Container(),
                    inputField("WEBINAR ID", "Enter webinar ID.."),
                    inputField("CODE", "Enter webinar code.."),
                    status
                        ? inputButton("Create Webinar", Colors.green)
                        : inputButton("Join Webinar", Colors.orange),
                  ],
                ),
              ),
              FlatButton(
                onPressed: () {
                  setState(() {
                    status = !status;
                  });
                },
                child: Text(
                  status ? "Already created ? Join." : "Don't have one ? Create.",
                  textScaleFactor: 0.9,
                  style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget inputField(label, hint) => Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              label,
              textScaleFactor: 1.05,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: hint,
                hintStyle:
                    TextStyle(color: Colors.grey, fontFamily: 'Montserrat'),
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
          ],
        ),
      );

  Widget inputButton(text, color) => InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ChatScreen()));
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 7, vertical: 15),
          width: double.infinity,
          decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [color[800], color[600], color[400]]),
              borderRadius: BorderRadius.circular(6.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(.3),
                    offset: Offset(0.0, 4.0),
                    blurRadius: 4.0)
              ]),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                text,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              ),
            ),
          ),
        ),
      );
}
