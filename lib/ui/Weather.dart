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

    Widget tempSection = Container(
      padding: EdgeInsets.symmetric(
        vertical: 10.0
      ),
      child: Row(
        
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            //weatherData.temp.toStringAsFixed(0),
            "Tempo",
            style: TextStyle(
              fontSize: 40.0
            ),),
            Expanded(
              child: Container(
                color: Colors.lightGreen,
                padding: EdgeInsets.only(
                  top: 12.0
                ),
                margin: EdgeInsets.only(
                  left: 6.0
                ),
                child: Text(
                  '\u2103',
                  style: TextStyle(
                    fontSize: 24.0
                  )
                ),
              ),
            ),
            Image.network(
              'https://openweathermap.org/img/wn/10d@2x.png',
              //'https://openweathermap.org/img/w/${weatherData.icon}.png',
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
            "São Francisco",
            //weatherData.name,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
          Text(
            //weatherData.main,
            "Cloud",
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