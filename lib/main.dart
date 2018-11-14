import 'package:flutter/material.dart';
import './views/home.dart';
import './views/login.dart';

void main() {
  runApp(new MaterialApp(
//    home: new HomePage(),
      home: new LoginPage(),
  ));
}