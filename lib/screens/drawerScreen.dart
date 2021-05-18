import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  Widget buildListTile(IconData icon, String title) {
    return ListTile(
      onTap: () {},
      leading: Icon(icon),
      title: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200,
            child: Text(
              "Cooking Up !",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
              ),
            ),
            alignment: Alignment.center,
            color: Colors.blue,
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile(Icons.restaurant, 'Meals'),
          buildListTile(Icons.settings, "Filters"),
        ],
      ),
    );
  }
}
