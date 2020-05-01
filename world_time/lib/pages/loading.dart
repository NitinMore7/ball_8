import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';
class loading extends StatefulWidget {
  @override
  _loadingState createState() => _loadingState();
}

class _loadingState extends State<loading> {

void setup() async{
  worldtime inst=worldtime(location: 'Berlin',flag: 'germany.png',url: 'Europe/Berlin');
  await inst.getdata();
  Navigator.pushReplacementNamed(context, '/home', arguments: {
    'location':inst.location,
    'flag':inst.flag,
    'time':inst.time,
    'isdaytime':inst.isdaytime,
  });
}

  @override
  void initState() {
    super.initState();
    setup();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitSquareCircle(
          color: Colors.white,
          size: 50.0,
        ),
      )
    );
  }
}
