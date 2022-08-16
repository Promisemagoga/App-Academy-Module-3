import 'package:flutter/material.dart';
import 'package:flutter_application_1/Dashboard.dart';

// ignore_for_file: prefer_const_constructors

import 'dart:html';
import 'dart:ui';

import 'package:flutter_application_1/Login.dart';

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}

class SignUp extends StatefulWidget {
  @override 
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Sign Up Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget> [
             Padding(
               padding: const EdgeInsets.only(top: 60.0),
             ),

            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 0, bottom: 0),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter a valid email adress',

                ),
                ),
            ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0, bottom: 0)
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password',
                  ),
                ),
              ),
             Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0, bottom: 0)
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password',
                    hintText: 'Confirm your password',
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 250,
                decoration: 
                BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: FlatButton(
                  onPressed: () => {
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => Dashboard()))
        },
        child: Text("Sign Up",
                 style: TextStyle(color: Colors.white, fontSize: 25),
                   ),
                ),
              ),

              SizedBox(
                height: 130,
                child: FlatButton(
                  onPressed:() {
                    Navigator.push(context,
          MaterialPageRoute(builder: (context) => Login()));
                  },
        
        child: const Text("Already have an account? Login",
        style: TextStyle(color: Colors.blue),
        )
                  
                ),
              ),
              
          ],
        ),
      ),
    );
  }
}



