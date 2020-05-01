import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';
void main() => runApp(MaterialApp(
  home: test(),
));

class test extends StatefulWidget {
  @override
  _testState createState() => _testState();
}

class _testState extends State<test> {
  List<quote> quotes =
    [quote('Be yourself everyone else is already taken','Oscar Wilde'),
    quote('I have nothing to declare except my genius','Oscar Wilde'),
    quote('The truth is rarely pure and never simple','Oscar Wilde') ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote){
              return Quotecard(quot: quote,delete:(){
                setState(() {
                  quotes.remove(quote);
                });
              } );
            }
        ).toList(),
      ),
    );
  }
}
