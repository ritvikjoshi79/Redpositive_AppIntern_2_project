import 'package:flutter/material.dart';
import 'package:redpositive_app_1/pages/drawer.dart';

class Demohome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.pinkAccent), // change the drawer burger color,
        backgroundColor: Colors.white,
      ),
      drawer: Burger(),
      body: Container(
        child: Center(
          child: Text("Welcome"),
        ),
      ),
    );
  }
}