import 'package:flutter/material.dart';

class FilterScreen extends StatelessWidget {
  static const routeName = '/filtersScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FilterPage"),
      ),
      body: Center(
        child: Text("Filters>>>>>"),
      ),
    );
  }
}
