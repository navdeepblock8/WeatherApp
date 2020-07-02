import 'package:flutter/material.dart';
import 'package:rethaew/location.dart';
import 'networking.dart';
void main(){
  runApp(MaterialApp(
    home: Scaffold(
      body: Rehtaew(),
    ),
  ));
}

class Rehtaew extends StatefulWidget {
  @override
  _RehtaewState createState() => _RehtaewState();
}

class _RehtaewState extends State<Rehtaew> {
  double latitude;
  double longitude;
  int appidkey=12345;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentLocation();
  }

  void getCurrentLocation() async{
    Location location = Location();
    await location.getLocation();
    latitude = location.latitude;
    longitude = location.longitude;
    Networking networking = Networking('https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$appidkey');
    var weatherData = networking.getData();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(

      ),
    );
  }
}

