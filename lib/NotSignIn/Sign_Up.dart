import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:redpositive_app_1/NotSignIn/loginpage.dart';

import 'package:redpositive_app_1/pages/drawer.dart';



class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController lastnameroller = TextEditingController();

  final _formkey= GlobalKey<FormState>();


  Widget buildTextField(String hintText , object) {
    return TextFormField(validator:(value) {
      if(value.isEmpty){
        return "You cannot leave this text field empty";
      }
      return null ;
      
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
      ),);
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
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Create an account to proceed..",

                    style: TextStyle(fontSize: 20.0 ,
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

                child: Form(  // Form started..
                  
                   key: _formkey,


                  child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("FIRST NAME :", textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      buildTextField("First name.." ,
                      namecontroller
                    ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("LAST NAME :", textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold),),
        
                        
                      ),
                      buildTextField("Last name.." , 
                      lastnameroller),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("EMAIL :", textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      buildTextField("Email..",
                      emailcontroller),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("PASSWORD :", textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      buildTextField("Password..",
                      passwordcontroller),
                      Text('Minimum 6 characters long;include small,capital letters,& atleast 1 digit & 1 special character',
                        textAlign: TextAlign.left,style: TextStyle(fontSize: 15.0,
                            color: Colors.grey),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("CONFIRM PASSWORD :", textAlign: TextAlign.left,style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                      buildTextField("Re-enter Password..",
                      passwordcontroller),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: (){
                              
                              _formkey.currentState.validate()? FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailcontroller.text, password: passwordcontroller.text): Text('Please fill all necessary fields');

                              if(_formkey.currentState.validate()){
                                Firestore.instance.collection(namecontroller.text).add(
                                  {
                                    'Name' : namecontroller.text + lastnameroller.text,
                                    'Email' : emailcontroller.text
                                  }
                                );

                               
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                              }
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
                                  'Sign Up',
                                  style: TextStyle(color: Colors.black ,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(child: Text('Have an account?'),),
                          Expanded(
                            child: RaisedButton(padding: EdgeInsets.symmetric(horizontal: 1.0),
                              color: Colors.white,
                              child: Text(
                                'Sign In',
                                textAlign: TextAlign.right,
                                style: TextStyle(color: Colors.red),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },

                            ),
                          ),
                        ],
                      ),],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
