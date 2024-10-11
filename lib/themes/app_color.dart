// ignore_for_file: unused_element

import 'package:flutter/material.dart';

extension on Color {
  Color ofAlpha(int alpha) {
    return Color.fromARGB(alpha, red, green, blue);
  }

  Color ofOpacity(double opacity) {
    return Color.fromRGBO(red, green, blue, opacity);
  }
}

class AppColor {
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);

  static const primary = Color(0xFFFFE55A);
  static const border = Color(0xFFE4E6E8);

  static const gray50 = Color(0xFFF9F9F9);
  static const gray100 = Color(0xFFF2F2F2);
  static const gray200 = Color(0xFFD6D5D5);
  static const gray250 = Color(0xFFB5B5B5);
  static const gray300 = Color(0xFF999999);
  static const gray400 = Color(0xFF4C4C4C);
  static const gray500 = Color(0xFF1A1A1A);

  static final highlightColor = Colors.black.withOpacity(0.12);
  static final splashColor = Colors.black.withOpacity(0.12);

  static const red = Colors.red;
  static const green = Colors.green;
}
