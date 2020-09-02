import 'package:flutter/material.dart';

class Page3Stateful extends StatefulWidget {
  @override
  Page3State createState() => Page3State();
}

class Page3State extends State<Page3Stateful> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return ListView(
          shrinkWrap: false,
          children: <Widget>[
            ConstrainedBox(
              constraints:
                  BoxConstraints(minHeight: viewportConstraints.maxHeight),
              child: Stack(
                children: [
                  Container(height: 500, color: Colors.blueGrey),
                  Positioned.fill(
                    top: 200,
                    child: Container(
                      color: Colors.orange,
                      child: Wrap(
                        children: <Widget>[
                          Text(
                            'In & Out Transactions',
                          ),
                          for (int index = 1; index <= 20; index++)
                            Card(
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: ListTile(
                                title: Text('$index'),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Page3Stateful();
  }
}
