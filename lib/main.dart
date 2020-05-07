import 'dart:async';
import 'package:flutter/material.dart';
import 'package:redpositive_app_1/NotSignIn/loginpage.dart';
import 'package:redpositive_app_1/pages/Home.dart';




void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
    
    routes: <String, WidgetBuilder>{
      '/demoHome' : (BuildContext context) => LoginPage()
    }
  )
);


class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {


startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }
  

    @override
void initState() {
  super.initState();
  startTime();
  
}
void navigationPage() {
  Navigator.of(context).pushReplacementNamed('/demoHome');
}


  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
