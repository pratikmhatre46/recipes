import 'package:flutter/material.dart';
import 'package:recipies/categories_screen.dart';
import 'package:recipies/category_meals_screen.dart';
import 'package:recipies/screens/meal_screen.dart';
import 'category_meals_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deli Meals',
      theme: ThemeData(
          canvasColor: Colors.amber.shade50,
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              title: TextStyle(fontFamily: 'RobotoCondensed', fontSize: 24),
              body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)))),
      //home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => CategoriesScreen(),
        CategoryMealsScreen.routes: (ctx) => CategoryMealsScreen(),
        MealScreen.routes: (ctx) => MealScreen()
      },
    );
  }
}
