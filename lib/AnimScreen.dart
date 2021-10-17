// ignore_for_file: file_names,  prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:anim/Buttons.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class AnimScreen extends StatefulWidget {
  @override
  State<AnimScreen> createState() => _AnimScreenState();
}

class _AnimScreenState extends State<AnimScreen> {
  // String Text1 = "Underweight";
  // String Text2 = "Balanced";
  // String Text3 = "Overweight";
  String Text1 = "";

  double Values = 0.0;

  void ChangeText() {
    if (Values <= 59) {
      Text1 = "Underweight";
    } else if (Values > 59 && Values <= 94) {
      Text1 = "Balanced";
    } else if (Values >= 95) {
      Text1 = "Overweight";
    }

    // setState(() {
    //   ChangeText();
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment(-0.7, -0.36),
            child: Text(
              Text1,
              style: TextStyle(color: Color(0xff9698a2), fontSize: 25),
            ),
          ),
          Align(
              alignment: Alignment(0, 0),
              child: SfSliderTheme(
                  data: SfSliderThemeData(
                    activeTrackColor: Color(0xff9698a2),
                    inactiveTrackColor: Color(0xff9698a2),
                    activeTrackHeight: 5,
                    inactiveTrackHeight: 5,
                    trackCornerRadius: 0,
                    tooltipBackgroundColor: Colors.black,
                    thumbColor: Colors.black,
                    thumbRadius: 8,
                  ),
                  child: SfSlider(
                      tooltipShape: SfPaddleTooltipShape(),
                      min: 40.0,
                      max: 120.0,
                      showLabels: true,
                      enableTooltip: true,
                      value: Values.round(),
                      onChanged: (dynamic val) {
                        setState(() {
                          Values = val;
                          ChangeText();
                        });
                      }))),
          Container(
            alignment: Alignment(-0.75, -0.85),
            child: IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.keyboard_backspace_rounded,
                  size: 40,
                  color: Colors.black,
                )),
          ),
          Container(
            alignment: Alignment(-0.55, -0.57),
            child: Text(
              "What is your \nweight goal?",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Buttons(),
        ],
      ),
    );
  }
}
