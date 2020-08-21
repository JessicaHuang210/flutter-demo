import 'package:flutter/material.dart';

//pages

import '../pages/Home.dart';
import '../pages/Page2.dart';

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

class Screen extends StatelessWidget {
  Screen({this.current});
  final int current;
  static List<Widget> _widgetOptions = <Widget>[
    Home(),
    Page2(),
    Center(
        child: Text(
      'Index 3: Message',
    )),
  ];
  @override
  Widget build(BuildContext context) {
    return _widgetOptions.elementAt(current);
  }
}
