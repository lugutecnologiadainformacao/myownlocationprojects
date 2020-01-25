import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myownlocationproject/api/LocationApi.dart';
import 'package:myownlocationproject/api/WeatherApi.dart';
import 'package:myownlocationproject/models/WeatherData.dart';
import 'package:myownlocationproject/ui/WeatherUI.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  WeatherData _weatherData;

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
      body: _weatherData != null ? WeatherUI(weatherData: this._weatherData) :
        Center(
          child: CircularProgressIndicator(
            strokeWidth: 4.0,
            valueColor: AlwaysStoppedAnimation(Colors.white),
          ),
        ),
    );
  }

  getCurrentLocation() async {
    LocationApi locationApi = LocationApi.getInstance();
    final location = await locationApi.getLocation();
    loadWeather(lat: location.latitude, lon: location.longitude);
    print (location.latitude);
    print (location.longitude);
  }

  loadWeather ({double lat, double lon}) async {
    WeatherApi weatherApi = WeatherApi.getInstance();
    final data = await weatherApi.getWeather(lat: lat, lon: lon);
    setState(() {
      this._weatherData = data;
    });
  }
}