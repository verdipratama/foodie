// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class AppRoute {
  AppRoute._();

  static const String INITIAL_ROUTE = '/';
  static const String HOME_FOODIE = "/home_foodie";
  static const String DETAILS_FOODIE = "/detail_foodie";
  static const String FAVORITE_FOODIE = "/favorite_foodie";
  static const String NOTIFICATION_FOODIE = "/notification_foodie";
  static const String PROFILE_FOODIE = "/profile_foodie";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments as dynamic;

    switch (settings.name) {
      case INITIAL_ROUTE:
        return _errorRoute();
      case HOME_FOODIE:
        return _errorRoute();
      case DETAILS_FOODIE:
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return PageRouteBuilder(
      pageBuilder: (_, __, ___) {
        return Scaffold(
          appBar: AppBar(title: const Text('Error')),
          body: const Center(child: Text('Error Page')),
        );
      },
    );
  }
}
