import 'package:flutter/material.dart';

import 'colors.dart';

lightTheme (context) {
  return ThemeData(
    primaryColor: kPrimaryColor,
    fontFamily: "Urbanist",
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      titleTextStyle: TextStyle(
        color: blackColor,
        fontSize: 20,
        fontWeight: FontWeight.w600
      ),
      backgroundColor: transparentColor,
      elevation: 0
    ),
  );
}