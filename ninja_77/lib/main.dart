import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home : Ninja(),
));

class Ninja extends StatefulWidget {
  @override
  _NinjaState createState() => _NinjaState();
}

class _NinjaState extends State<Ninja> {
  int level=5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(

        onPressed: () {
          setState(() {
            level++;
          });
        },
        child: Icon(Icons.favorite,color: Colors.red,size: 20.0,),

      ),
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Ninja_77'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen[800],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0,40.0,30.0,0.0),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage('https://images.squarespace-cdn.com/content/v1/56cdc4478259b5c112bb2285/1563813005796-HHC6LOU8F2L4IUN8X6YS/ke17ZwdGBToddI8pDm48kHI6kw2Ok6kURsVZo3EjcPIUqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKcsJklAWnDgzxp7pHk1MrjrqHib4wOtstSBaKiuCvHWPKpjlqNNnUHqHw2MFcEMl0k/pokemon.jpg?format=1500w'),
              ),
            ),
            Divider(
              height: 40.0,
              color: Colors.grey,
            ),
            Text('NAME',
          style: TextStyle(
              color: Colors.orangeAccent,
              letterSpacing: 2.0,
            fontSize: 20.0
            )
            ),
            SizedBox(height: 10.0,),
            Text('Ninja_77',
                style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 30.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            )
            ),
          SizedBox(height: 10.0,),
            Text('Current level',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.orangeAccent,
                  letterSpacing: 2.0,
                )
            ),
            SizedBox(height: 10.0,),
            Text('Gold' + '$level',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 30.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                )
            ),
            SizedBox(height: 10.0,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.lightBlue,
                ),

                SizedBox(width: 10.0,),
                Text('nitinmore6990@gmail.com',
                  style: TextStyle(color: Colors.deepPurpleAccent,
                  fontSize: 30.0,fontWeight: FontWeight.bold),
                )
              ],
            )

        ],
        ),
      ),
    );
  }
}

class test extends StatefulWidget {
  @override
  _testState createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
