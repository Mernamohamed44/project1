import 'package:flutter/material.dart';

class CommonMethod {
  ThemeData themedata = ThemeData(
      primaryColor: const Color.fromRGBO(0, 87, 100, 1),
      appBarTheme: AppBarTheme(color: Colors.grey[200]),
      scaffoldBackgroundColor: Colors.grey[200],
      textTheme: const TextTheme(
        bodyText1: TextStyle(),
        bodyText2: TextStyle(),
      ).apply(
        bodyColor: Colors.grey[200],
      ));
}
