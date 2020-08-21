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
    textTheme: TextTheme(),
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
