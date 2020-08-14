//packages
import 'package:flutter/material.dart';

//widgets
import 'widgets/ButtomTabs.dart';
import 'widgets/DrawerItems.dart';

//pages
import 'pages/Home.dart';
import 'pages/PageWrap.dart';
import 'pages/TodoList.dart';

class Screen extends StatelessWidget {
  Screen({this.current});
  final int current;
  static List<Widget> _widgetOptions = <Widget>[
    Home(),
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
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      drawer: DrawerItems(),
      body: Screen(current: current),
      bottomNavigationBar: ButtomTabs(
        current: current,
        onChangeTab: onChangeTab,
      ),
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
        sliderTheme: SliderThemeData(
          thumbColor: Colors.orange,
          inactiveTrackColor: Colors.orange.shade100,
          inactiveTickMarkColor: Colors.orange,
          valueIndicatorColor: Colors.orange,
          activeTickMarkColor: Colors.orange.shade100,
          activeTrackColor: Colors.orange,
        ),
      ),
      routes: <String, WidgetBuilder>{
        '/list': (BuildContext context) => TodoList(),
        '/setting': (BuildContext context) => PageWrap(title: 'Setting'),
      },
    );
  }
}
