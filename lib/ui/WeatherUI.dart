import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myownlocationproject/models/WeatherData.dart';

class WeatherUI extends StatelessWidget {

  final WeatherData weatherData;

  // Construtor
  WeatherUI({@required this.weatherData});
  
  
  @override
  Widget build(BuildContext context) {

    // Declare todos os widgets aqui
    Widget dateSection = Container(
      child: Text(
        DateFormat('MMMM d, H:m').format(DateTime.now()),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 24.0,
          color: Colors.white
        ),),
    );

    Widget tempSection = Container(
      padding: EdgeInsets.symmetric(
        vertical: 10.0
      ),
      child: Row(
        
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            //weatherData.temp.toStringAsFixed(0),
            weatherData.temp.toStringAsFixed(0),
            style: TextStyle(
              color: Colors.white,
              fontSize: 40.0
            ),),
            Expanded(
              child: Container(
                //color: Colors.lightGreen,
                padding: EdgeInsets.only(
                  top: 12.0
                ),
                margin: EdgeInsets.only(
                  left: 6.0
                ),
                child: Text(
                  '\u2103',
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white
                  )
                ),
              ),
            ),
            Image.network(
              //'https://openweathermap.org/img/wn/10d@2x.png',
              'https://openweathermap.org/img/w/${weatherData.icon}.png',
              width: 100.0,
              height: 100.0,
              fit: BoxFit.cover,
            )
        ],
      ),
    );

       Widget descriptionSection = Container (
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            
            weatherData.name,
            //weatherData.name,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
          Text(
            weatherData.main,
            //"Cloud",
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.white
            )
          )
        ],
      ),

    );



    return Container(
      padding: const EdgeInsets.all(30.0),
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          dateSection,
          tempSection,
          descriptionSection
        ],
      ),
    );
  }
}