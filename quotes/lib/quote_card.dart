import 'package:flutter/material.dart';
import 'quote.dart';
class Quotecard extends StatelessWidget {
  final quote quot;
  final Function delete;
  const Quotecard({this.quot,this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(quot.quotes,style: TextStyle(
              color: Colors.teal,
              fontSize: 20,
              wordSpacing: 2,
            ),),
            SizedBox(height: 6,),
            Text(quot.author,style: TextStyle(
                color: Colors.purpleAccent,
                fontSize: 20,
                wordSpacing: 2,
                fontStyle: FontStyle.italic
            ),
            ),
            SizedBox(height: 8,),
            FlatButton.icon(onPressed: delete, icon: Icon(
                  Icons.delete,
                  color: Colors.amberAccent,
                  ), label: Text('Delete')
            )
          ],
        ),
      ),
    );
  }
}
