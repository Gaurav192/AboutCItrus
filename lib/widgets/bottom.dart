import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final Function onTap;
  final int selectedIndex;
  BottomNavBar(this.onTap, this.selectedIndex);
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: selectedIndex,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Adarsh')),
        BottomNavigationBarItem(
            icon: Icon(Icons.info_outline), title: Text('About')),
        BottomNavigationBarItem(
            icon: Icon(Icons.group_work), title: Text('TeamCardinal')),
      ],
    );
  }
}
