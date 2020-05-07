import 'package:flutter/material.dart';


import '../NotSignIn/Sign_Up.dart';
import '../NotSignIn/loginpage.dart';


class Burger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200, // setting width of the dawer.
        color: Colors.pink[50].withOpacity(0.8),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

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
                                            child: Text('About RedPositive',style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 22
                        ),),
                    ),
                  ),
                  Divider(
                    height: 20,
                    color: Colors.black,
                  ),

          ],
        ),
      );
  }
}
