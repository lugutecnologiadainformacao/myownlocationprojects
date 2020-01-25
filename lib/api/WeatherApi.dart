import 'package:http/http.dart' show Client;
import 'package:myownlocationproject/models/WeatherData.dart';


class WeatherApi {

    static const _apiKey = '1403cb426eff8fd3ed8563890cb39cbf';
    //static const _apiKey = 'b6907d289e10d714a6e88b307';
    static const _endpoint = 'http://api.openweathermap.org/data/2.5';
    double lat, lon;

    // O meu import não está igual
    // Acho que ele só importou o Client do http
    Client client = Client();

    // Singleton
    static WeatherApi _instance;
    // ENTENDER ESSE CÓDIGO
    static WeatherApi getInstance() => _instance ??= WeatherApi();

    String _apiCall ({double lat, double lon}) {
      return _endpoint + "/weather?lat=" + lat.toString() + "&lon=" + lon.toString() +
          "&APPID=" + _apiKey + "&units=metric";
    }

    getWeather({double lat, double lon}) async {
      var response = await client.get(
        Uri.encodeFull(_apiCall(lat: lat, lon: lon)),
        headers: {
          'Accept' : 'application/json'
        }
      );

      return WeatherData.deserialize(response.body);
    }

}
