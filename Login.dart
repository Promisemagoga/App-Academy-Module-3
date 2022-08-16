// ignore_for_file: prefer_const_constructors

import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Dashboard.dart';
import 'package:flutter_application_1/SignUp.dart';



class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  @override 
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Page"),
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
              FlatButton(
                onPressed: () {
                  // TO DO FORGOT PASSWORD SCREEN GOES HERE
                },
                child: Text('Forgot Password',
                style: TextStyle(color: Colors.blue, fontSize: 15),
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
        child: Text("Login",
                 style: TextStyle(color: Colors.white, fontSize: 25),
                   ),
                ),
              ),
              SizedBox(
                height: 130,
                child: FlatButton(
                  onPressed:() {
                    Navigator.push(context,
          MaterialPageRoute(builder: (context) => SignUp()));
                  },
        
        child: const Text("New User? Create Account",
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



