import 'package:flutter/material.dart';
import 'package:flutter_application_1/Dashboard.dart';
import 'package:flutter_application_1/Login.dart';

import 'FutureScreen1.dart';



class FutureScreen2 extends StatelessWidget {
  const FutureScreen2 ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title:const Text('Screen 2'),
           actions: <Widget> [
             IconButton(
               onPressed: () => {},
                icon: const Icon(Icons.add_alert), 
                color: Colors.lime ,
                )
           ],
           ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(child: Text('Welcome!'), ),
            
            ]
              ) ,

 ),
    );
  }
}