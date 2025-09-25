import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(  //This creates the skeleton of app (White page)), //Scaffold
        appBar: AppBar(
          title: Text('CPR Mock-Up'), //Creates a text.
          backgroundColor: Colors.blueAccent,
          actions: <Widget>[
            ElevatedButton(
                onPressed: (){
                  print('Calling 911...');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: Text(
                  '911',
                  style: TextStyle(
                    color: Colors.white70
                )
            )
        )],
        ), //AppBar
      ) //Scaffold
    ); //MaterialApp
  }
}

