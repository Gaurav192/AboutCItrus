import 'package:flutter/material.dart';

class Sliver extends StatelessWidget {
  final Widget list;
  Sliver(this.list);
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 250,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
              background:
                  Image.asset('assets/citrus_logo.jpg', fit: BoxFit.cover),
              title: Text('About Citrus')),
        ),
        list
      ],
    );
  }
}
