import 'dart:ui';

import 'package:c0vid/misc_screen.dart';
import 'package:flutter/material.dart';
import 'package:c0vid/home_screen.dart';

List<Widget> pages = [
  HomeScreen(),
  MiscScreen() // Second Page
];

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About C0VID',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Center(
          child: Column(
        children: [
          Text('Developed by Michael Fang \n for educational purposes',
              style: TextStyle(
                fontSize: 25,
              )),
          Text('Version  :  v1.0.0',
              style: TextStyle(
                fontSize: 25,
              )),
          Text('Developer  :  Michael Fang',
              style: TextStyle(
                fontSize: 25,
              )),
          Text('UI Designer  :  Michael Fang',
              style: TextStyle(
                fontSize: 25,
              )),
          Text('Special Thanks  :  Mr. Steve',
              style: TextStyle(
                fontSize: 25,
              )),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      )),
    );
  }
}

String yourstatus = '';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter your feelings',
              style: TextStyle(fontSize: 20),
            ),
            Container(
              margin: EdgeInsets.only(top: 25, bottom: 25),
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'How do you feel',
                    labelStyle: TextStyle(fontSize: 20)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 25),
              height: 55,
              width: 299,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      yourstatus = 'Don\'t worry, you are okay!';
                    });
                  },
                  child: Text(
                    'SUBMIT',
                    style: TextStyle(fontSize: 20),
                  )),
            ),
            Text(
              yourstatus,
              style: TextStyle(fontSize: 20),
            )
          ],
        )));
  }
}
