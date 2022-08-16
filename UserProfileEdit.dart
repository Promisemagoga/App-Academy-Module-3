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
      home: UserProfileEdit(),
    );
  }
}

class UserProfileEdit extends StatefulWidget {
  @override 
  _UserProfileEditState createState() => _UserProfileEditState();
}

class _UserProfileEditState extends State<UserProfileEdit> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Edit Profile"),
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
                  labelText: 'User Name',
                  hintText: 'Enter a valid user name',

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
                    labelText: 'Email Adress',
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
                    labelText: 'Cell Number',
                    hintText: 'Enter a valid cell number',
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
                    hintText: 'Enter a secure password',
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
        child: Text("Save changes",
                 style: TextStyle(color: Colors.white, fontSize: 25),
                   ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

  






