import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FoodieProfilePage extends StatelessWidget {
  const FoodieProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.asset(
          'assets/lotties/soon.json',
          width: 250.0,
        ),
      ),
    );
  }
}
