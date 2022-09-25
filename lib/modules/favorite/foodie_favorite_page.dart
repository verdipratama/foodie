import 'package:flutter/material.dart';

class FoodieFavoritePage extends StatelessWidget {
  const FoodieFavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Foodie Favorited Page',
        style: TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
