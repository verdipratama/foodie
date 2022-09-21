import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:foodie/pages/foodie_navigation.dart';

class FoodieSplashPage extends StatelessWidget {
  const FoodieSplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      title: const Text(
        "FOODIE",
        style: TextStyle(
          color: Colors.white,
          fontSize: 45.0,
        ),
      ),
      loadingText: const Text(
        "1.3.3.7",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
      showLoader: true,
      navigator: const FoodieNavigation(),
      backgroundColor: Colors.black,
    );
  }
}
