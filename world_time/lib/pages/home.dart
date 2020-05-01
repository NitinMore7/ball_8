import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  Map data={};
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;

    String bgimage = data['isdaytime'] ? 'day.png' : 'night.png';
    Color bgcolor = data['isdaytime'] ? Colors.blue : Colors.indigo[900];
    return Scaffold(
      backgroundColor: bgcolor,
      body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image :AssetImage('assets/$bgimage'),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0,120,0,0),
              child: Column(
                children: <Widget>[
                FlatButton.icon(onPressed: ()async
                    {
                      dynamic result = await Navigator.pushNamed(context, '/location');
                      setState(() {
                        data = result;
                      });
                  },
                    icon: Icon(Icons.edit_location,color: Colors.grey[300],),
                    label: Text('Edit Location',style: TextStyle(color: Colors.grey[300]),)
                ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(data['location'],
                      style: TextStyle(
                        fontSize: 28,
                        letterSpacing: 2,
                        color: Colors.white
                      ),)
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Text(data['time'],style:
                    TextStyle(fontSize: 66,color: Colors.indigoAccent),
                  )

        ],
      ),
            ),
          )
      ),
    );
  }
}
