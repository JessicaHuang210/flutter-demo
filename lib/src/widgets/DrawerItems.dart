import 'package:flutter/material.dart';

class DrawerItems extends StatelessWidget {
  final List<Map<String, dynamic>> menus = [
    {'name': 'List', 'path': 'list', 'icon': 57453},
    {'name': 'Account', 'path': 'account', 'icon': 59705},
    {'name': 'Setting', 'path': 'setting', 'icon': 59576},
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: menus.length + 1,
        itemBuilder: (BuildContext context, int i) {
          if (i == 0) {
            return DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            );
          }
          return ListTile(
            leading: Icon(
                IconData(menus[i - 1]["icon"], fontFamily: 'MaterialIcons')),
            title: Text(menus[i - 1]["name"]),
            onTap: () {
              Navigator.of(context).pushNamed('/${menus[i - 1]["path"]}');
            },
          );
        },
      ),
    );
  }
}
