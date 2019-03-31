import 'package:flutter/material.dart';

import './ui/about.dart';
import './ui/team.dart';
import './ui/adarsh.dart';
import './widgets/bottom.dart';
import './widgets/sliver.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 1;
  void onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [Adarsh(), AboutPage(), TeamPage()];
    return MaterialApp(
      theme: ThemeData(primaryColor: Color.fromARGB(255, 37, 124, 125)),
      home: Scaffold(
          body: Sliver(pages[selectedIndex]),
          bottomNavigationBar: BottomNavBar(onTap, selectedIndex)),
    );
  }
}
