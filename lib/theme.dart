// ignore_for_file: unused_element, unused_field

import 'package:flutter/material.dart';

abstract class AppColors {
  static const primary = Color(0xFF18203D);
  static const secondary = Color(0xFF1E9E9D);
  static const accent = Color(0xFFE4DCA7);

  //text
  static const textDark = Color(0xFF000000);
  static const textLigth = Color(0xFFF5F5F5);
  static const textFaded = Color(0xFF9899A5);
  static const textHighlight = secondary;

  //card
  static const cardLight = Color(0xFFF9FAFE);
  static const cardDark = Color(0xFF303334);

  //icon
  static const iconLight = Color(0xFFB1B4C0);
  static const iconDark = Color(0xFFB1B3C1);
}

abstract class _LightColors {
  static const background = Colors.white;
  static const card = AppColors.cardLight;
}

class AppTheme {
  AppTheme._();
}
