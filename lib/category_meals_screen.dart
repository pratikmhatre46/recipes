import 'package:flutter/material.dart';
import 'package:recipies/dummy_data.dart';
import 'package:recipies/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const String routes = '/categories-meal';
  @override
  Widget build(BuildContext context) {
    final routesArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routesArgs['title'];
    final categoryId = routesArgs['id'];
    final categoriesMeal = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MealItem(
            id: categoriesMeal[index].id,
            affordability: categoriesMeal[index].affordability,
            duration: categoriesMeal[index].duration,
            imageUrl: categoriesMeal[index].imageUrl,
            complexity: categoriesMeal[index].complexity,
            title: categoriesMeal[index].title,
          );
        },
        itemCount: categoriesMeal.length,
      ),
    );
  }
}
