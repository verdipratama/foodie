import 'package:flutter/material.dart';

class FoodieNotificationPage extends StatelessWidget {
  const FoodieNotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Foodie Notification Page',
        style: TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
