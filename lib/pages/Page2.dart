import 'package:flutter/material.dart';

class Page2Stateful extends StatefulWidget {
  @override
  Page2State createState() => Page2State();
}

class Page2State extends State<Page2Stateful> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppBar(
          title: Text('Page2'),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Text('Scroll horizontal'),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Wrap(
            spacing: 10,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  // Navigator.of(context).pushNamed('/bank-app');
                },
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Bank App',
                  ),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight,
                      colors: [Colors.pink, Colors.orange],
                    ),
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {},
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: Colors.grey,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    ' Lyrics by Sidney Stein.',
                  ),
                ),
              ),
              RaisedButton(
                onPressed: () {},
                textColor: Colors.white,
                padding: const EdgeInsets.all(0.0),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'dse pweo wppkld lefodkwl dlpwdpw',
                  ),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight,
                      colors: [Colors.blue, Colors.green],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Page2Stateful();
  }
}
