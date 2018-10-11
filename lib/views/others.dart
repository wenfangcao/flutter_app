import 'package:flutter/material.dart';

class OthersPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new OthersPageState();

}

class OthersPageState extends State<OthersPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text('这是Others界面'),
      ),
    );
  }

}
