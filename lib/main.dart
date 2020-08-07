import 'package:flutter/material.dart';
import 'src/widgets/ButtomTabs.dart';
import 'src/widgets/DrawerItems.dart';

import 'src/pages/PageWrap.dart';

class Screen extends StatelessWidget {
  Screen({this.current});
  final int current;
  static const List<Widget> _widgetOptions = <Widget>[
    Align(
        alignment: Alignment.bottomLeft,
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
      backgroundColor: Colors.grey.shade300,
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
        primaryColor: Colors.red,
        primaryColorDark: Colors.red,
        accentColor: Colors.red,
      ),
      routes: <String, WidgetBuilder>{
        '/account': (BuildContext context) => PageWrap(title: 'Account'),
        '/setting': (BuildContext context) => PageWrap(title: 'Setting'),
      },
    );
  }
}

void main() => runApp(App());
