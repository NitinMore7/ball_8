import 'package:flutter/material.dart';
import 'package:worldtime/services/world_time.dart';
class chooselocation extends StatefulWidget {
  @override
  _chooselocationState createState() => _chooselocationState();
}

class _chooselocationState extends State<chooselocation> {
  List<worldtime> locations = [
    worldtime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    worldtime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
    worldtime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    worldtime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    worldtime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    worldtime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    worldtime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    worldtime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
    worldtime(url: 'Asia/Kolkata' ,location: 'india', flag: 'india.png'),
  ];

void updatetime(index) async{
  worldtime inst= locations[index];
  await inst.getdata();
  Navigator.pop(context, {
    'location':inst.location,
    'flag':inst.flag,
    'time':inst.time,
    'isdaytime':inst.isdaytime,
  });

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 4.0),
          child: Card(
            child : ListTile(
              onTap: () {
                    updatetime(index);
              },
              title: Text(locations[index].location),
              leading: CircleAvatar(backgroundImage: AssetImage('assets/${locations[index].flag}'),),
            )
          ),
        );
      },itemCount: locations.length,),
    );
  }
}
