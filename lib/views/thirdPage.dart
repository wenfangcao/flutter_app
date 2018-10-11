import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new ThirdPageState();

}

class ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text('这是第3个界面'),
      ),
    );
  }

}
