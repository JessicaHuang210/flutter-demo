import 'package:flutter/material.dart';

class ButtomTabs extends StatelessWidget {
  ButtomTabs({this.current, this.onChangeTab});
  final int current;
  final Function onChangeTab;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: current,
      items: [
        BottomNavigationBarItem(title: Text("Home"), icon: Icon(Icons.home)),
        BottomNavigationBarItem(title: Text("Page2"), icon: Icon(Icons.list)),
        BottomNavigationBarItem(
            title: Text("Page3"), icon: Icon(Icons.message)),
      ],
      onTap: onChangeTab,
    );
  }
}
