import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MaterialApp(
  home: test()
));

class test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter 101'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Expanded(
              flex: 5,
              child: Image.network('https://hdwallpapers.imgix.net/pictures-fm-36301553143521sqvki9bspc.jpg?auto=compress&cs=tinysrgb&dpr=1')),
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.all((30.0)),
              color: Colors.pinkAccent,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              padding: EdgeInsets.all((30.0)),
              color: Colors.cyanAccent,
              child: Text('2'),
            ),
          ),
           ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.cyan,
      ),
    );
  }
}
