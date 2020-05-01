import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
class worldtime {
  String location;
  String time;
  String flag;
  String url;
  bool isdaytime;
  worldtime({
    this.location,this.flag,this.url
  });
  Future<void> getdata() async{
    try {
      Response response=await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);

      DateTime now= DateTime.parse(datetime);
      now = now.add( Duration(hours: int.parse(offset)));
      isdaytime= now.hour>6 && now.hour <20 ? true :false;
      time= now.toString();

      time=DateFormat.jm().format(now);
    } on Exception catch (e) {
      time = 'Couldn\'t get time';
    }
  }
}
