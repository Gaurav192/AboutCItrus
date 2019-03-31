import 'package:flutter/material.dart';

class Adarsh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate([Text('Initial Widget')]));
  }
}
