import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(home: (TestApp())));

class TestApp extends StatefulWidget {
  @override
  _TestAppState createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  final _randomValue = Random(); // variable to calculate a random color
  late Color _randomColor; // variable for storing random color

  //function for generation random values for background color
  void generationRandomColor() {
    setState(() {
      _randomColor = Color.fromRGBO(_randomValue.nextInt(256),
          _randomValue.nextInt(256), _randomValue.nextInt(256), 1);
    });
  }

  @override
  void initState() {
    generationRandomColor();
    super.initState();
  }

  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => generationRandomColor(),
        child: Container(
            color: _randomColor,
            child: Center(
              child: Text('Hello, click on me!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 24,
                      fontFamily: 'Montserrat',
                      color: Colors.white)),
            )));
  }
}
