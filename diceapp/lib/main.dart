import 'dart:math';
import 'package:flutter/material.dart';

void main(){
  return runApp(
    MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(title: Text('DiceApp',
          style: TextStyle(color: Colors.white,
            fontSize: 30,
            decorationStyle: TextDecorationStyle.dashed
          ),
        ),
        backgroundColor: Colors.red,),
        body: Dicepage(),
      )
    )
  );
}

class Dicepage extends StatefulWidget {
  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  var leftdienum=1,rightdienum=3;
  void changeface(){
    setState(() {
      leftdienum=Random().nextInt(6)+1;
      rightdienum=Random().nextInt(6)+1;

    });
  }


    @override
    Widget build(BuildContext context) {
      return Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    flex: 3,
                    child :FlatButton(
                      splashColor: Colors.deepOrangeAccent,
                      child: Image.asset('images/dice$leftdienum.png'),
                      onPressed: () {
                       changeface();
                      },
                    )
                ),
                Expanded(
                  flex: 3,
                  child :FlatButton(
                    splashColor: Colors.deepOrangeAccent,
                    child: Image.asset('images/dice$rightdienum.png')
                    ,onPressed: (){
                      changeface();
                  },
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }

  }
