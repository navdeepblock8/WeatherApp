import 'package:geolocator/geolocator.dart';

class Location{
  double latitude;
  double longitude;
  Future <void> getLocation() async{
    try{
      Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    }
    catch (e){
      print(e);
    }
  }
}