// ignore_for_file: file_names,  prefer_const_constructors, prefer_const_literals_to_create_immutables,
import 'package:flutter/material.dart';

import 'SecondScreen.dart';

class Buttons extends StatefulWidget {
  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  // void _Perechod() {
  //   setState(() {
  //     SecondScreen();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(-0.55, 0.57),
      child: SizedBox(
        height: 70,
        width: 200,
        child: RaisedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SecondScreen()));
          },
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: Color(0xfff3f4f6),
          child: Row(
            children: [
              Text(
                "Continue       ",
                style: TextStyle(color: Colors.black, fontSize: 23),
              ),
              Container(
                alignment: Alignment(1, 0),
                child: Icon(
                  Icons.arrow_right_alt_rounded,
                  size: 40,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
