import 'package:flutter/material.dart';
import 'menu_drawer.dart';

class IngredientInputScreen extends StatefulWidget {
  @override
  _IngredientInputScreenState createState() => _IngredientInputScreenState();
}

class _IngredientInputScreenState extends State<IngredientInputScreen> {
  final TextEditingController _controller = TextEditingController();

  void _searchRecipes() {
    if (_controller.text.isNotEmpty) {
      Navigator.pushNamed(
        context,
        '/recipes',
        arguments: _controller.text,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Enter Ingredient")),
      drawer: MenuDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: "Main Ingredient",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _searchRecipes,
              child: Text("Find Recipes"),
            ),
          ],
        ),
      ),
    );
  }
}
