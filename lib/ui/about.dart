import 'package:flutter/material.dart';
import 'dart:convert';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
                background:
                    Image.asset('assets/citrus_logo.jpg', fit: BoxFit.fitWidth),
                title: Text('About Citrus')),
          ),
          FutureBuilder(
            future:
                DefaultAssetBundle.of(context).loadString('json/about.json'),
            builder: (context, snapshot) {
              var _about = json.decode(snapshot.data.toString());
              return SliverList(
                  delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      _about[index]['description'],
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                );
              }, childCount: _about == null ? 0 : _about.length));
            },
          ),
        ],
      ),
    );
  }
}