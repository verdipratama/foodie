import 'package:flutter/material.dart';

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

  static Widget _verticalSpace(double height) {
    return SizedBox(height: height);
  }

  static Widget _horizontalSpace(double width) {
    return SizedBox(width: width);
  }

  static Widget verticalSpaceTiny(context) {
    return _verticalSpace(MediaQuery.of(context).size.height * 0.01);
  }

  static Widget verticalSpaceSmall(context) {
    return _verticalSpace(MediaQuery.of(context).size.height * 0.02);
  }

  static Widget verticalSpaceMedium(context) {
    return _verticalSpace(MediaQuery.of(context).size.height * 0.03);
  }

  static Widget verticalSpaceLarge(context) {
    return _verticalSpace(MediaQuery.of(context).size.height * 0.05);
  }

  static Widget horizontalSpaceTiny(context) {
    return _horizontalSpace(MediaQuery.of(context).size.width * 0.01);
  }

  static Widget horizontalSpaceSmall(context) {
    return _horizontalSpace(MediaQuery.of(context).size.width * 0.02);
  }

  static Widget horizontalSpaceMedium(context) {
    return _horizontalSpace(MediaQuery.of(context).size.width * 0.05);
  }

  static Widget horizontalSpaceLarge(context) {
    return _horizontalSpace(MediaQuery.of(context).size.width * 0.07);
  }
}
