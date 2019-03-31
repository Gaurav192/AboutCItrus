import 'package:flutter/material.dart';
import 'dart:convert';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString('json/about.json'),
        builder: (context, snapshot) {
          var _items = json.decode(snapshot.data.toString());
          return SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  _items[index]['description'],
                  style: TextStyle(fontSize: 16),
                ),
              ),
            );
          }, childCount: _items == null ? 0 : _items.length));
        });
  }
}
