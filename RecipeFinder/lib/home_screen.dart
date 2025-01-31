import 'package:flutter/material.dart';
import 'menu_drawer.dart';
class HomeScreen extends StatefulWidget { //changes to stateful widget
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _switch = false; // default is light theme

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //created material app to handle theme switching
      theme: _switch ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Recipe Finder"),
          actions: [ //create switch button
            Row(
              children: [
                Text("Dark Mode"),
                Switch(
                  value: _switch,
                  onChanged: (newValue) {
                    setState(() {
                      _switch = newValue;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
        drawer: MenuDrawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Find Recipes Based on Ingredients",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                "Enter an ingredient and discover delicious recipes!",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/input'),
                child: Text("Get Started"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

