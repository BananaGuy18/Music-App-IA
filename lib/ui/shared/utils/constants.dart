import 'package:flutter/material.dart';

abstract class ThemeText {
  static const titleTextBlue = TextStyle(
      color: Colors.mainColor,
      fontSize: 30,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold);
  static const titleTextBlack = TextStyle(
      color: Colors.black,
      fontSize: 30,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold);
  static const secondaryTitleTextBlue = TextStyle(
      color: Colors.mainColor,
      fontSize: 23,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold);
  static const secondaryTitleTextBlack = TextStyle(
      color: Colors.black,
      fontSize: 23,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold);
  static const secondaryText = TextStyle(
      color: Colors.darkGrey,
      fontSize: 20,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500);
  static const smallText = TextStyle(
      color: Colors.darkGrey,
      fontSize: 15,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500);
  static const smallTextBoldBlack = TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold);
  static const linkText = TextStyle(
      color: Colors.mainColor,
      fontSize: 15,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w800);
  static const errorText = TextStyle(
      color: Color(0xFFE74C3C),
      fontSize: 12);
}

abstract class Colors {
  static const mainColor = Color(0xFFABC4FF);
  static const darkGrey = Color(0xFFADB5BD);
  static const lightGrey = Color(0xFFF2F3F4);
  static const black = Color(0xFF000000);
  static const error = Color(0xFFFF7675);
  static const success = Color(0xFF1DD1A1);
}

abstract class Button {
  static final textButton = TextButton.styleFrom(
    splashFactory: NoSplash.splashFactory,
    backgroundColor: Colors.mainColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
  );
}
