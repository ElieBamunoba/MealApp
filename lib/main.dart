import 'package:flutter/material.dart';

import './screens/filterScreen.dart';
import './screens/tabScreen.dart';
import './screens/mealScreen.dart';
import './screens/categoryMealSceen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meal App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline1: TextStyle(
                fontSize: 24,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabScreen(),
        CategoryMealScreen.nameRoute: (ctx) => CategoryMealScreen(),
        MealScreen.nameRoute: (ctx) => MealScreen(),
        FilterScreen.routeName: (ctx) => FilterScreen(),
      },
    );
  }
}
