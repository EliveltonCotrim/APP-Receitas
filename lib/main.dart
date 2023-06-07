import 'package:app_receitas/screens/categories_meals_screen.dart';
import 'package:app_receitas/screens/categories_screen.dart';
import 'package:app_receitas/screens/meal_detail_screen.dart';
import 'package:app_receitas/screens/tabs_screen.dart';
import 'package:app_receitas/utils/app_routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData tema = ThemeData();

    return MaterialApp(
      title: 'Vamos Cozinhar?',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.pink,
          secondary: Colors.amber,
        ),
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      routes: {
        AppRoutes.HOME : (ctx) => TabsScreen(),
        AppRoutes.CATEGORIES_MEALS : (ctx) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL : (ctx) => MealDetailScreen(),
      },
    );
  }
}