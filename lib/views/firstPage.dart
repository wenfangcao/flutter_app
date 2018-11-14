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
    return new Scaffold(
      body: new OthersPage()
    );
  }

}
