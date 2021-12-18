import 'package:flutter/material.dart';
import 'screen_one.dart';
import 'package:flutter_blue/flutter_blue.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    ),
  );
}

class CoronaConnectApp extends StatefulWidget {
  const CoronaConnectApp({Key? key}) : super(key: key);

  @override
  _CoronaConnectAppState createState() => _CoronaConnectAppState();
}

class _CoronaConnectAppState extends State<CoronaConnectApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // This trailing comma makes auto-formatting nicer for build methods.
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}
