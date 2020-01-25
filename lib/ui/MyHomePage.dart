import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myownlocationproject/api/LocationApi.dart';
import 'package:myownlocationproject/ui/Weather.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  void initState() { 
    super.initState();
    getCurrentLocation();
  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blue,
      appBar: new AppBar(
        title: new Text("Location")
      ),
      body: Weather(),
    );
  }

  getCurrentLocation() async {
    LocationApi locationApi = LocationApi.getInstance();
    final location = await locationApi.getLocation();
    print (location.latitude);
    print (location.longitude);
  }
}