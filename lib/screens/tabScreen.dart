import 'package:flutter/material.dart';

import '../screens/drawerScreen.dart';
import './categoriesScreen.dart';
import './favoriteScreen.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int selectedPageIndex = 0;

  List<Map<String, Object>> selectedPage = [
    {'page': CategoriesScreen(), 'title': "Meal Category"},
    {'page': FavoriteScreen(), 'title': "Your Favorite"},
  ];

  void pageSelected(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedPage[selectedPageIndex]['title']),
      ),
      drawer: DrawerPage(),
      body: selectedPage[selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: pageSelected,
        backgroundColor: Colors.blue,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        currentIndex: selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.list_alt_outlined),
            label: "Category",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.star_border_sharp),
            label: "Favorite",
          ),
        ],
      ),
    );
  }
}
