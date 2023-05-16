import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primarySwatch: Colors.blue,
    textTheme: textTheme(),
    inputDecorationTheme: inputDecoration(),
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      iconTheme: const IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(color: Colors.grey[600], fontSize: 20),
    ),
  );
}

InputDecorationTheme inputDecoration() {
  return InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 38, vertical: 20),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(color: kPrimaryColor),
        gapPadding: 10),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(color: kSecondaryColor),
        gapPadding: 10),
  );
}

TextTheme textTheme() {
  return const TextTheme(
      bodyLarge: TextStyle(color: Colors.black),
      bodyMedium: TextStyle(color: Colors.black),
      bodySmall: TextStyle(color: Colors.black));
}
