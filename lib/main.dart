

import 'package:flutter/material.dart';
import 'package:myownlocationproject/ui/MyHomePage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Location Teste",
      theme: new ThemeData(
        primaryColor: Colors.blue
      ),
      home: MyHomePage(title: "Location App"),
    );
  }
}