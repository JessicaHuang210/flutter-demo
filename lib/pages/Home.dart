import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class HomeStateful extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomeStateful> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Wrap(
                spacing: 10,
                direction: Axis.vertical,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Hey Tommy,',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .apply(color: Colors.white),
                  ),
                  Text(
                    'What will you do today?',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Wrap(
                spacing: 10,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: <Widget>[
                  Badge(
                    badgeContent: null,
                    position: BadgePosition.topRight(top: -5, right: -5),
                    padding: EdgeInsets.all(3),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                      size: 24.0,
                    ),
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 2.0, color: Colors.white),
                      image: new DecorationImage(
                        image: NetworkImage(
                            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          padding: EdgeInsets.fromLTRB(30, 90, 30, 80),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              colors: [Colors.blue, Colors.green],
            ),
          ),
        ),
        Transform(
          transform: Matrix4.translationValues(0.0, -50.0, 0.0),
          child: Card(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'My total balence',
                      ),
                      Text(
                        '\$ 37,000.00',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 1.0,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.grey.shade300,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: null,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeStateful();
  }
}
