import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: (TestApp())));

class TestApp extends StatefulWidget {
  @override
  _TestAppState createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  @override
  Widget build(BuildContext context) {
    return Text('Hello, click on me!',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 24, fontFamily: 'Times Nem Roman', color: Colors.white));
  }
}
