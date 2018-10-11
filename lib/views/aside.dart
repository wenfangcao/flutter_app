import 'package:flutter/material.dart';

class AsidePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new AsidePageState();

}

class AsidePageState extends State<AsidePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Text('这是aside界面'),
      ),
    );
  }

}
