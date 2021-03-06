import 'package:flutter/material.dart';
import 'widgets/ButtomTabs.dart';
import 'widgets/DrawerItems.dart';

import 'pages/PageWrap.dart';
import 'pages/TodoList.dart';

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
      'Index 2: List',
    )),
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

class GlobalLayout extends StatefulWidget {
  GlobalLayout({this.title});
  final String title;

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
        title: Text(widget.title),
      ),
      drawer: DrawerItems(),
      body: Screen(current: current),
      bottomNavigationBar: ButtomTabs(
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
      home: GlobalLayout(title: 'flutter_router_demo'),
      theme: ThemeData(
        primaryColor: Colors.orange,
        primaryColorDark: Colors.orange,
        accentColor: Colors.orange,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          actionsIconTheme: IconThemeData(color: Colors.white),
          textTheme: TextTheme(
            headline6: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(foregroundColor: Colors.white),
      ),
      routes: <String, WidgetBuilder>{
        '/list': (BuildContext context) => TodoList(),
        '/setting': (BuildContext context) => PageWrap(title: 'Setting'),
      },
    );
  }
}
