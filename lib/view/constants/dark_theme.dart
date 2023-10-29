import 'package:flutter/material.dart';

import 'colors.dart';

darkTheme(context) {
  return ThemeData(
    //todo: to be change in darkTheme
    primaryColor: kPrimaryColor,
    fontFamily: "Urbanist",
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    ),
  );
}