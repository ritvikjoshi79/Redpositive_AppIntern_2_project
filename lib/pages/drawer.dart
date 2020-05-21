import 'package:flutter/material.dart';


import '../NotSignIn/Sign_Up.dart';
import '../NotSignIn/loginpage.dart';


class Burger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300, // setting width of the drawer.
        color: Colors.white,

      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: const EdgeInsets.only(bottom: 6.0,left:25.0),
              child: CircleAvatar(
                radius: 60,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 6.0,left:25.0),              child: Text('Name comes here',style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15
              ),),
            ),
            Padding(padding: const EdgeInsets.only(bottom: 6.0,left:25.0),
              child: Text('Email Id comes here',style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15
              ),),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
                    padding: const EdgeInsets.only(bottom: 6.0,left:25.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=> LoginPage()));
                        // Navigator of sign in
                      },
                                            child: Text('Sign in' , style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 22
                      ),),
                    ),
                  ),
                  Divider(
                    height: 20,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6.0, left:25.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=> SignIn()));
                      },
                                            child: Text('Sign Up', style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 22
                      ),),
                    ),
                  ),
                  Divider(
                    height: 20,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 0.0, left:25.0),
                    child: GestureDetector(
                      onTap: (){
                        // Navigator of About
                      },
                                            child: Text('Help and Support',style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 22
                        ),),
                    ),
                  ),
                  Divider(
                    height: 20,
                    color: Colors.black,
                  ),
            Padding(
              padding: const EdgeInsets.only(bottom: 0.0, left:25.0),
              child: GestureDetector(
                onTap: (){
                  // Navigator of About
                },
                child: Text('FAQ',style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 22
                ),),
              ),
            ),

          ],
        ),
      );
  }

}
