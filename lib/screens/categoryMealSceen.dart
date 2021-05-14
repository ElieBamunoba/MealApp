import 'package:flutter/material.dart';
import 'package:mealapp/widgets/mealItem.dart';
import '../data/dummy_data.dart';

class MealScren extends StatelessWidget {
  static const nameRoute = '/category-MealScreen';

  // final String categoryId;
  // final String categoryTitle;
  // final Color categoryColor;
  // MealScren({
  //   this.categoryId,
  //   this.categoryTitle,
  //   this.categoryColor,
  // });

  @override
  Widget build(BuildContext context) {
    final routeArguments =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryId = routeArguments['id'];
    final categoryTitle = routeArguments['title'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(
            categoryTitle,
          ),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
                affordability: categoryMeals[index].affordability,
                complexity: categoryMeals[index].complexity,
                duration: categoryMeals[index].duration,
                imageUrl: categoryMeals[index].imageUrl,
                title: categoryMeals[index].title);
          },
          itemCount: categoryMeals.length,
        ));
  }
}
