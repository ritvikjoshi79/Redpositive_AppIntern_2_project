import 'package:appintern2/Screens/classroom.dart';
import 'package:appintern2/Screens/meeting.dart';
import 'package:appintern2/Screens/webinar/create_join_screen.dart';
import 'package:flutter/material.dart';
import '../Service/service.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreenState createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "RedPositive",
          textScaleFactor: 0.9,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Spartan',
          ),
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Text(
              "Pricing",
              textScaleFactor: 0.7,
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              "About Us",
              textScaleFactor: 0.7,
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              "Log Out",
              textScaleFactor: 0.7,
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.red[700],
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.5,
          child: ListView.builder(
              itemCount: serviceList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Card(
                        elevation: 10,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.65,
                          color: index == currentIndex
                              ? Colors.red[900]
                              : Colors.white,
                          padding: EdgeInsets.only(left: 15, right: 15),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  serviceList[index].header,
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: index == currentIndex
                                        ? Colors.white
                                        : Colors.red[900],
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Spartan',
                                  ),
                                ),
                                Divider(
                                  color: index == currentIndex
                                      ? Colors.white.withOpacity(0.3)
                                      : Colors.red[900].withOpacity(0.3),
                                  height: 20,
                                  thickness: 2,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                CircleAvatar(
                                  radius: 60,
                                  backgroundImage:
                                      AssetImage(serviceList[index].image),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  serviceList[index].text1,
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: index == currentIndex
                                        ? Colors.white
                                        : Colors.red[900],
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                Divider(
                                  color: index == currentIndex
                                      ? Colors.white.withOpacity(0.3)
                                      : Colors.red[900].withOpacity(0.3),
                                  height: 20,
                                  thickness: 2,
                                ),
                                FlatButton(
                                  onPressed: () {
                                    if (currentIndex == index) {
                                      if (currentIndex == 0) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    CreateJoinScreen()));
                                      }
                                      else if(currentIndex == 1){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Meeting()));
                                      }
                                      else if(currentIndex == 2){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Classroom()));
                                      }
                                    }
                                  },
                                  child: Text(
                                    serviceList[index].text2,
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                      color: index == currentIndex
                                          ? Colors.white
                                          : Colors.red[900],
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )),
        ),
      ),
    );
  }
}
