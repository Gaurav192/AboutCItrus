import 'package:flutter/material.dart';
import 'dart:convert';

class TeamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString('json/team.json'),
        builder: (context, snapshot) {
          var _items = json.decode(snapshot.data.toString());
          return SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
            return Card(
              margin: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Container(
                      child: Column(
                    children: <Widget>[
                      Image.asset(
                        _items[index]['coverImage'],
                        fit: BoxFit.fitWidth,
                      ),
                      ListTile(
                        title: Text(_items[index]['name'],
                            textAlign: TextAlign.center),
                        subtitle: Text(_items[index]['role'],
                            textAlign: TextAlign.center),
                      )
                    ],
                  )),
                ],
              ),
            );
          }, childCount: _items == null ? 0 : _items.length));
        });
  }
}
