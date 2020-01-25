import 'package:flutter/material.dart';

class Weather extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {

    // Declare todos os widgets aqui
    Widget dateSection = Container(
      child: Text(
        "10:00",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24.0,
          color: Colors.white
        ),),
    );

    return Container(
      padding: const EdgeInsets.all(60.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          dateSection
        ],
      ),
    );
  }
}