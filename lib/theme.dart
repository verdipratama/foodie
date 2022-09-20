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

class DeviceSize {
  static double height(BuildContext context) {
    double height;
    height = MediaQuery.of(context).size.height;
    return height;
  }

  static double width(BuildContext context) {
    double width;
    width = MediaQuery.of(context).size.width;
    return width;
  }

  static double statusBarHeight(BuildContext context) {
    double height;
    height = MediaQuery.of(context).padding.top;
    return height;
  }
}

class Spacers {
  BuildContext context;
  Spacers({required this.context});

  static Widget verticalSpace(double height) {
    return SizedBox(height: height);
  }

  static Widget horizontalSpace(double width) {
    return SizedBox(width: width);
  }

  static Widget verticalSpaceTiny(context) {
    return verticalSpace(MediaQuery.of(context).size.height * 0.01);
  }

  static Widget verticalSpaceSmall(context) {
    return verticalSpace(MediaQuery.of(context).size.height * 0.02);
  }

  static Widget verticalSpaceMedium(context) {
    return verticalSpace(MediaQuery.of(context).size.height * 0.03);
  }

  static Widget verticalSpaceLarge(context) {
    return verticalSpace(MediaQuery.of(context).size.height * 0.05);
  }

  static Widget horizontalSpaceTiny(context) {
    return horizontalSpace(MediaQuery.of(context).size.width * 0.01);
  }

  static Widget horizontalSpaceSmall(context) {
    return horizontalSpace(MediaQuery.of(context).size.width * 0.02);
  }

  static Widget horizontalSpaceMedium(context) {
    return horizontalSpace(MediaQuery.of(context).size.width * 0.05);
  }

  static Widget horizontalSpaceLarge(context) {
    return horizontalSpace(MediaQuery.of(context).size.width * 0.07);
  }
}

class AppTheme {
  AppTheme._();
}
