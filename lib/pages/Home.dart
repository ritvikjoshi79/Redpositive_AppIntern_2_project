import 'package:flutter/material.dart';


//  just import this file and call the Home widget.
// add navigation of other page and again a drawer to get everything done.

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.pinkAccent), // change the drawer burger color
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),

      body: Container(
        height: MediaQuery. of(context). size. height, // getting height of the device
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('RedPositive Services' , style: TextStyle(
                  fontSize: 28 ,
                  fontWeight: FontWeight.w500,
                  color: Colors.pinkAccent
                ),
                ),
                Text('Join a meeting,host a meeting...', style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300
                ),),
                
                SizedBox(
                  height: 25,
                )
              ],
            ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(  // adding footer to the screen
        elevation: 0.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Text('©RedPositive Services Pvt. Ltd.'),
            )
          ],
        )
      ),
    );
  }
}