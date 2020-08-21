import 'package:flutter/material.dart';

class YellowThemeData {
  static ThemeData original = new ThemeData(
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
    textTheme: TextTheme(
      bodyText2: TextStyle(color: Colors.grey.shade700),
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
  );
}

class BlueThemeData {
  static TextStyle priceText = new TextStyle(
    color: Colors.blueGrey,
    fontWeight: FontWeight.bold,
    fontSize: 13,
    height: 1.6,
  );
  static TextStyle h3 = new TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static TextStyle iconText1 = new TextStyle(fontSize: 13);
  static TextStyle iconText2 = new TextStyle(fontSize: 12);
}
