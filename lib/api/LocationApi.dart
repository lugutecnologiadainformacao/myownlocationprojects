import 'package:flutter/services.dart';
import 'package:location/location.dart';

class LocationApi {
  Location _location = Location();
  String error;

  static LocationApi _instance;
  static LocationApi getInstance() => _instance ??= LocationApi();

  Future<LocationData> getLocation() async {
    LocationData locationData;
    try {
      locationData = await _location.getLocation();
      error = null;
    } on PlatformException catch (e) {
      if (e.code == 'PERMISSION_DENIED') {
        error = 'Permission denied';
      }
      locationData = null;
    }
    return locationData; 
  }
}