import 'package:flutter/material.dart';

class FoodieProfilePage extends StatelessWidget {
  const FoodieProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Foodie Profile Page',
        style: TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
