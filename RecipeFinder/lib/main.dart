import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'ingredient_input_screen.dart';
import 'recipe_display_screen.dart';
import 'menu_drawer.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe Finder',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/input': (context) => IngredientInputScreen(),
        '/recipes': (context) => RecipeDisplayScreen(),
      },
    );
  }
}
