import 'package:flutter/material.dart';

class MealScren extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;
  final Color categoryColor;
  MealScren({
    this.categoryId,
    this.categoryTitle,
    this.categoryColor,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryTitle,
        ),
        backgroundColor: categoryColor,
      ),
      body: Center(
        child: Text("The recipes for the category"),
      ),
    );
  }
}
