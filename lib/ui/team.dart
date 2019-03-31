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
              margin: EdgeInsets.symmetric(vertical:10),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 260,
                    child: Column(
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: <Widget>[
                            Positioned(
                              child: Padding(
                                padding: const EdgeInsets.only(top:10,bottom:50),
                                child: Image.asset(
                                  _items[index]['coverImage'],
                                  height: 200,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                maxRadius: 45,
                                backgroundImage:
                                    AssetImage(_items[index]['avatar']),
                              ),
                              maxRadius: 50,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Text(
                      _items[index]['name'],
                      textAlign: TextAlign.center,
                    ),
                    subtitle: Text(_items[index]['role'],
                        textAlign: TextAlign.center),
                  )
                ],
              ),
            );
          }, childCount: _items == null ? 0 : _items.length));
        });
  }
}
