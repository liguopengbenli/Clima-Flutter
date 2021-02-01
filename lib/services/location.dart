import 'package:geolocator/geolocator.dart';

/*
*
* HTTP return code cheet sheet
* 1** Hold on
* 2** Here you go
* 3** Go away
* 4** You fucked up
* 5** I fucked up (server)
*
* */

class Location {
  double latitude;
  double longitude;

  // Future mean await for getting value
  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
