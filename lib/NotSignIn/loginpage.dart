
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:redpositive_app_1/Views/startScreen.dart';
import 'package:redpositive_app_1/pages/drawer.dart';
import 'Sign_Up.dart';
import 'package:firebase_auth/firebase_auth.dart';






class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  




final FirebaseAuth _auth = FirebaseAuth.instance;
  final emailcon = TextEditingController();
  final pwdcon = TextEditingController();
  bool _isHidden = true;
  final _formkey= GlobalKey<FormState>();

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }


  Widget buildTextField(String hintText , object) {
    return TextFormField( validator:(value) {
      if(value.isEmpty){
        return "You cannot leave this text field empty";
      }
      return null;
    },
    controller: object,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        prefixIcon: hintText == "Enter email.." ? Icon(Icons.email) : Icon(Icons.lock),
        suffixIcon: hintText == "Password"
            ? IconButton(
          onPressed: _toggleVisibility,
          icon: _isHidden
              ? Icon(Icons.visibility_off)
              : Icon(Icons.visibility),
        )
            : null,
      ),
      obscureText: hintText == "Password" ? _isHidden : false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.redAccent,

      appBar: AppBar(
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white70), // change the drawer burger color,
        backgroundColor: Colors.redAccent,
      ),
      drawer: Burger(),
      body: Container(

        height: MediaQuery. of(context). size. height,

        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Login Here',
                    textAlign: TextAlign.left, style: TextStyle(fontSize: 25.0 ,
                        fontWeight: FontWeight.w500 , letterSpacing: 1)),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      color:  Colors.black,
                      blurRadius: 2.0,spreadRadius: 0.0,
                      offset: Offset(2.0,2.0),
                    ),
                    ]),
                margin: EdgeInsets.symmetric(horizontal: 30.0),
                child: Form( key: _formkey,
                  child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('EMAIL',
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 20.0)),
                      buildTextField("Enter email..", emailcon),
                      Text('PASSWORD',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 20.0)),
                      buildTextField("Enter password.." , pwdcon),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () async{
                             AuthResult res;

                              try{
                                  res = await _auth.signInWithEmailAndPassword(email: emailcon.text, password: pwdcon.text) ;
                              }
                              catch(e){
                                print(e.toString());
                                

                              }finally{
                                if(res!= null){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StartScreen())) ;
                                }
                              }
                                 

                                    // if (await FirebaseAuth.instance.currentUser() != null) {
                                      
                                    // }
                                   
                                 

                            },
                            child: Container(
                              height: 50,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent[100],
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(
                                child: Text(
                                  'Login',
                                  style: TextStyle(color: Colors.black ,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'New User?',
                              textAlign: TextAlign.right,
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: RaisedButton(
                              padding: EdgeInsets.symmetric(horizontal: 1.0),
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                              ),
                              child: Text(
                                'Sign Up',
                                textAlign: TextAlign.left,
                                style: TextStyle(color: Colors.green),
                              ),
                              onPressed: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context)=> SignIn()));
                              },
                            ),
                          ),
                        ],
                      ),
                      Row( mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RaisedButton(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            ),
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(color: Colors.red),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
