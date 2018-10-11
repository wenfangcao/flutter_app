import 'package:flutter/material.dart';
import './others.dart';

class FirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new FirstPageState();

}

class FirstPageState extends State<FirstPage> {
  bool _isFa = true;

  void _toggleFavorite() {
    setState(() {
      _isFa = !_isFa;
      Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new OthersPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: [
        new Container(
          padding: new EdgeInsets.all(0.0),
          child: new IconButton(
              icon: (_isFa
                  ? new Icon(Icons.star)
                  : new Icon(Icons.star_border)),
              color: Colors.red[500],
              onPressed: _toggleFavorite,
          ),
        ),
        new SizedBox(
          width: 18.0,
          child: new Container(
          child: new Text('11'),
          ),
        ),
      ]
    );
  }

}
