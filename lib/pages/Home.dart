//packages
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:intl/intl.dart';
//theme
import '../utils/Theme.dart';

class HomeStateful extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomeStateful> {
  var f = NumberFormat(',###.00', 'en_US');
  double totalBalence = 37033.33;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.blueGrey.shade50,
        child: Stack(
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Wrap(
                    spacing: 10,
                    direction: Axis.vertical,
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
                    spacing: 20,
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
              padding: EdgeInsets.fromLTRB(30, 90, 30, 150),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                  colors: [Colors.blue, Colors.green],
                ),
              ),
            ),
            Positioned(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    Card(
                      margin: EdgeInsets.zero,
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'My total balence',
                                ),
                                Text(
                                  '\$ ${f.format(totalBalence)}',
                                  style: BlueThemeData.priceText
                                      .apply(fontSizeFactor: 1.3),
                                  strutStyle: StrutStyle(
                                    forceStrutHeight: true,
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          width: 45,
                                          height: 45,
                                          margin: EdgeInsets.only(bottom: 10),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey.shade100,
                                          ),
                                          child: Icon(
                                            Icons.account_balance_wallet,
                                            color: Colors.blue,
                                            size: 24.0,
                                          ),
                                        ),
                                        Text(
                                          'Active Balence',
                                          style: BlueThemeData.iconText1,
                                        ),
                                        Text(
                                          '\$ 1,000',
                                          style: BlueThemeData.priceText,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          width: 45,
                                          height: 45,
                                          margin: EdgeInsets.only(bottom: 10),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey.shade100,
                                          ),
                                          child: Icon(
                                            Icons.credit_card,
                                            color: Colors.blue,
                                            size: 24.0,
                                          ),
                                        ),
                                        Text(
                                          'Card',
                                          style: BlueThemeData.iconText1,
                                        ),
                                        Text(
                                          '\$ 1,000',
                                          style: BlueThemeData.priceText,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          width: 45,
                                          height: 45,
                                          margin: EdgeInsets.only(bottom: 10),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey.shade100,
                                          ),
                                          child: Icon(
                                            Icons.save,
                                            color: Colors.blue,
                                            size: 24.0,
                                          ),
                                        ),
                                        Text(
                                          'Save It',
                                          style: BlueThemeData.iconText1,
                                        ),
                                        Text(
                                          '\$ 1,000',
                                          style: BlueThemeData.priceText,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 50,
                                  height: 50,
                                  margin: EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(10, 10)),
                                    color: Colors.white,
                                  ),
                                  child: Icon(
                                    Icons.card_membership,
                                    color: Colors.blue,
                                    size: 24.0,
                                  ),
                                ),
                                Text(
                                  'Card Center',
                                  style: BlueThemeData.iconText2,
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 50,
                                  height: 50,
                                  margin: EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(10, 10)),
                                    color: Colors.white,
                                  ),
                                  child: Icon(
                                    Icons.card_membership,
                                    color: Colors.blue,
                                    size: 24.0,
                                  ),
                                ),
                                Text(
                                  'E-Wallet',
                                  style: BlueThemeData.iconText2,
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 50,
                                  height: 50,
                                  margin: EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(10, 10)),
                                    color: Colors.white,
                                  ),
                                  child: Icon(
                                    Icons.card_membership,
                                    color: Colors.blue,
                                    size: 24.0,
                                  ),
                                ),
                                Text(
                                  'Send It',
                                  style: BlueThemeData.iconText2,
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 50,
                                  height: 50,
                                  margin: EdgeInsets.only(bottom: 10),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(10, 10)),
                                    color: Colors.white,
                                  ),
                                  child: Icon(
                                    Icons.card_membership,
                                    color: Colors.blue,
                                    size: 24.0,
                                  ),
                                ),
                                Text(
                                  'Other',
                                  style: BlueThemeData.iconText2,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text(
                            'In & Out Transactions',
                            style: BlueThemeData.h3,
                          ),
                          Card(
                            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: ListTile(
                              title: Text('kk'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeStateful();
  }
}
