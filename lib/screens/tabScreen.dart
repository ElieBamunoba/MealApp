import 'package:flutter/material.dart';
import './categoriesScreen.dart';
import './favoriteScreen.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int selectedPageIndex = 0;

  List<Widget> selectedPage = [
    CategoriesScreen(),
    FavoriteScreen(),
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
        title: Text("Meal"),
      ),
      body: selectedPage[selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: pageSelected,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border_sharp),
            label: "Favorite",
          ),
        ],
      ),
    );
  }
}
