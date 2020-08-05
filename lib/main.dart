import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  Screen({this.current});
  final int current;
  static const List<Widget> _widgetOptions = <Widget>[
    Center(
        child: Text(
      'Index 0: Home',
    )),
    Center(
        child: Text(
      'Index 1: List',
    )),
    Center(
        child: Text(
      'Index 2: Message',
    )),
  ];
  @override
  Widget build(BuildContext context) {
    return _widgetOptions.elementAt(current);
  }
}

class Tabs extends StatelessWidget {
  Tabs({this.current, this.onChangeTab});
  final int current;
  final Function onChangeTab;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: current,
        items: [
          BottomNavigationBarItem(title: Text("Home"), icon: Icon(Icons.home)),
          BottomNavigationBarItem(title: Text("List"), icon: Icon(Icons.list)),
          BottomNavigationBarItem(
              title: Text("Message"), icon: Icon(Icons.message)),
        ],
        onTap: onChangeTab);
  }
}

class GlobalLayout extends StatefulWidget {
  @override
  GlobalLayoutState createState() => GlobalLayoutState();
}

class GlobalLayoutState extends State<GlobalLayout> {
  int current = 0;

  void onChangeTab(int n) {
    setState(() {
      current = n;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter layout title'),
      ),
      body: Screen(current: current),
      backgroundColor: Colors.grey.shade300,
      bottomNavigationBar: Tabs(
        current: current,
        onChangeTab: onChangeTab,
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: null, child: const Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter_demo',
      home: GlobalLayout(),
    );
  }
}

void main() => runApp(App());
