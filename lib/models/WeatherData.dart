import 'dart:convert';

class WeatherData {

  final String name;
  final double temp;
  final String main;
  final String icon;

  // Veja que é um Map como parâmetro
  WeatherData({this.name, this.temp, this.main, this.icon});

  static WeatherData deserialize(String json) {
    JsonDecoder decoder = JsonDecoder();
    var map = decoder.convert(json);

    print (map);
    String name = map['name'];
    //String name = "Sao francisco";
    double temp = map['main']['temp'].toDouble();
    //double temp = 10.0;
    String main = map['weather'][0]['main'];
    //String main = 'Gustavo';
    String icon = map['weather'][0]['icon'];
    //String icon = '1';


    // Precisa ser com os nomes assim pois a entrada é um map
    return WeatherData(name: name, temp: temp, main: main, icon: icon);
  }

}
