
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
          borderRadius: BorderRadius.circular(5.0),
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

      backgroundColor:  Color(0xff900C0C),
      appBar: AppBar( title: Text('RedPositive',
        style: TextStyle(
          color: Color(0xff900C0C),
          fontWeight: FontWeight.bold,
          fontFamily: 'Spartan',
        ),),

        elevation: 0.0,
        iconTheme: IconThemeData(color:  Color(0xff900C0C) ), // change the drawer burger color,
        backgroundColor: Colors.white,
      ),
      drawer: Burger(),
      body: Container(

        height: MediaQuery. of(context). size. height,

        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                child: Text('Login Here',
                    textAlign: TextAlign.left, style: TextStyle(fontSize: 25.0 ,
                        fontWeight: FontWeight.w500 , letterSpacing: 1, color: Colors.white
                    )),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
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
                      Text('Email',
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 20.0)),SizedBox( height : 10),
                      buildTextField("Enter email..", emailcon),
                      SizedBox( height : 10),
                      Text('Password',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 20.0)),
                      SizedBox( height : 10),
                      buildTextField("Enter password.." , pwdcon),
                      SizedBox( height : 10),
                      Center(
                        child: Padding(
                         padding : const EdgeInsets.all(3.0),
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
                              width: 7000,
                              decoration: BoxDecoration(
                                  color:  Color(0xff900C0C),
                                  borderRadius: BorderRadius.circular(5.0)
                              ),
                              child: Center(
                                child: Text(
                                  'Login',
                                  style: TextStyle(color: Colors.white ,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      Row( mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          FlatButton(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            color: Colors.white,

                            child: Text(
                              'Forgot Password? Get help signing in.',
                              style: TextStyle(color:  Color(0xff900C0C),),

                            ),
                            onPressed: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(width: 10,),
                    Expanded(
                      child: FlatButton(
                        padding: EdgeInsets.symmetric(),
                        color:  Color(0xff900C0C),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0.0)),
                        ),
                        child: Text(
                          'Dont have an account? Sign Up',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> SignIn()));
                        },
                      ),
                    ),
                  ],
                ),
              ), ],
          ),
        ),
      ),
    );
  }
}
