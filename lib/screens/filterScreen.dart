import 'package:flutter/material.dart';
import '../widgets/mainDrawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filtersScreen';

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  Widget _buildSwitchListTile(
    String title,
    String description,
    bool curentValue,
    Function updateValue,
  ) {
    return SwitchListTile(
      title: Text(
        title,
        style: TextStyle(fontSize: 20),
      ),
      subtitle: Text(description, style: TextStyle(fontSize: 17)),
      value: curentValue,
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FilterPage"),
      ),
      drawer: DrawerPage(),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            child: Text(
              "Adjust Your meal",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            child: Column(
              children: [
                _buildSwitchListTile(
                  "Gluten-Free",
                  "Only include Gluten-Free meals",
                  _glutenFree,
                  (newValue) {
                    setState(
                      () {
                        _glutenFree = newValue;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  "Lactose-free",
                  "Only include Lactose-free meals",
                  _lactoseFree,
                  (newValue) {
                    setState(
                      () {
                        _lactoseFree = newValue;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  "Vegetarian",
                  "Only include Vegetarian meals",
                  _vegetarian,
                  (newValue) {
                    setState(
                      () {
                        _vegetarian = newValue;
                      },
                    );
                  },
                ),
                _buildSwitchListTile(
                  "Vegan",
                  "Only include Vegan meals",
                  _vegan,
                  (newValue) {
                    setState(
                      () {
                        _vegan = newValue;
                      },
                    );
                  },
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            width: 100,
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Save"),
            ),
          )
        ],
      ),
    );
  }
}
