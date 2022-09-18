import 'package:flutter/material.dart';

part 'app_colors.dart';
part 'app_icons.dart';
part 'app_typography.dart';

class AppTheme {
  static final ThemeData config = ThemeData(
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
  );

  static List<BoxShadow> get boxShadow => [
        BoxShadow(
          offset: const Offset(0, 25),
          blurRadius: 40,
          spreadRadius: -5,
          color: Colors.white.withOpacity(.1),
        ),
      ];

  static BoxDecoration get globalBox => const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        color: Colors.white,
      );
}
