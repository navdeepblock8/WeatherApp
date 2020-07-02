import 'package:flutter/material.dart';
import 'package:rethaew/location.dart';
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
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentLocation();
  }

  void getCurrentLocation() async{
    Location location = Location();
    await location.getLocation();
    print(location.latitude);
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(

      ),
    );
  }
}

