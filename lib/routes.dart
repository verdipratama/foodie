// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

class AppRoute {
  AppRoute._();

  static const String INITIAL_ROUTE = '/';
  static const String SPLASH_ROUTE = "/splash";
  static const String MAIN_ROUTE = "/main-foodie";
  static const String HOME_RESTAURANT_ROUTE = "/home-foodie";
  static const String DETAILS_RESTAURANT_ROUTE = "/detail-foodie";
  static const String FAVORITE_ROUTE = "/favorite-foodie";
  static const String NOTIFICATION_ROUTE = "/notification-foodie";
  static const String PROFILE_ROUTE = "/profile-foodie";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments as dynamic;

    switch (settings.name) {
      case INITIAL_ROUTE:
        return _errorRoute();
      case HOME_RESTAURANT_ROUTE:
        return _errorRoute();
      case DETAILS_RESTAURANT_ROUTE:
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
