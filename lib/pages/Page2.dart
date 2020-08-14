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
          child: Row(
            children: <Widget>[
              Card(
                color: Colors.grey,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Music by Julie Gable.',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Card(
                color: Colors.grey,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    ' Lyrics by Sidney Stein.',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Card(
                color: Colors.grey,
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'dse pweo wppkld lefodkwl dlpwdpw',
                    style: TextStyle(color: Colors.white),
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
