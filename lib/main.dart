import 'package:flutter/material.dart';
import './ui/about.dart';

void main() {
  runApp( MaterialApp(
    title: 'Login',
    home: AboutPage(),
    theme: ThemeData(primarySwatch: Colors.teal),
  ));
}
