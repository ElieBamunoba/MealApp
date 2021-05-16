import 'package:flutter/material.dart';
import 'package:mealapp/data/dummy_data.dart';

class MealScreen extends StatelessWidget {
  static const nameRoute = '/MealScreen';

  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final String id = routeArgument['id'];
    final String title = routeArgument['title'];
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == id);

    Widget titleCotainer(String text) {
      return Container(
        margin: EdgeInsets.all(15),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
      );
    }

    Widget listBiulder(BuildContext context, Widget list) {
      return Container(
        height: 200,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white54,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black),
        ),
        child: list,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            titleCotainer("Ingredients"),
            listBiulder(
              context,
              ListView.builder(
                itemBuilder: (context, index) => Card(
                  child: Text("${selectedMeal.ingredients[index]}"),
                ),
                itemCount: selectedMeal.ingredients.length,
              ),
            ),
            titleCotainer("Steps"),
            listBiulder(
              context,
              ListView.builder(
                itemBuilder: (context, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text("# ${index + 1}"),
                      ),
                      title: Text(selectedMeal.steps[index]),
                    ),
                    Divider(
                      height: 10,
                    ),
                  ],
                ),
                itemCount: selectedMeal.steps.length,
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
