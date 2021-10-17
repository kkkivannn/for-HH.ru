// ignore_for_file: file_names, unused_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment(0, -0.2),
            child: Icon(
              Icons.done_rounded,
              size: 50,
            ),
          ),
          Container(
            alignment: Alignment(0, -0.1),
            child: Text(
              "You're all set",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            alignment: Alignment(0, 0),
            child: Text(
              "You can now start to use the app \n \t \t \t \t \t with all the features.",
              style: TextStyle(color: Color(0xff9698a2), fontSize: 20),
            ),
          ),
          Align(
              alignment: Alignment(0, 0.3),
              child: TextButton(
                  onPressed: null,
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.blue[800],
                      //color: Color(0Xff13467f),
                      fontSize: 30,
                      //fontWeight: FontWeight.w400
                    ),
                  )))
        ],
      ),
    );
  }
}
