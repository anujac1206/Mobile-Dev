import "package:flutter/material.dart";

class MenuDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              decoration:BoxDecoration(
                color: isDarkMode?Colors.grey[800]:Colors.grey[200],
              ),
            child: Text(
              "Menu",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: isDarkMode?Colors.white:Colors.black,
              ),
            ),
          ),
          buildDrawer(Icons.home, "home", "/", context, isDarkMode),
          buildDrawer(Icons.search, "search", "/", context, isDarkMode),
          buildDrawer(Icons.fastfood_outlined, "Recipe", "/", context, isDarkMode)
        ],

      ),
    );
  }
}

Widget buildDrawer
    (
    IconData icon,String title,String route,BuildContext context,bool isDarkMode)
{
  return ListTile(
    leading: Icon(icon,color: isDarkMode?Colors.white:Colors.black),
    title: Text(title,
    style: TextStyle(
      color: isDarkMode?Colors.white:Colors.black
    ),
    ),
    onTap:(){
      Navigator.pushNamed(context, route);
    },
  );
}
