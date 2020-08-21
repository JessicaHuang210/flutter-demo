//packages
import 'package:flutter/material.dart';

//widgets
import 'widgets/ButtomTabs.dart';
import 'widgets/DrawerItems.dart';

//pages
import 'pages/TodoList.dart';
import 'pages/SwitchBar.dart';

//utils
import 'utils/Theme.dart';

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
      theme: YellowThemeData.original,
      routes: <String, WidgetBuilder>{
        '/list': (BuildContext context) => TodoList(),
        '/switch-bar': (BuildContext context) => SwitchBar(),
      },
    );
  }
}
