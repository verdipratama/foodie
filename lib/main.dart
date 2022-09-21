import 'package:flutter/material.dart';
import 'package:foodie/pages/foodie_splash_page.dart';

void main() => runApp(const Bismillah());

class Bismillah extends StatelessWidget {
  const Bismillah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodie: Restaurant App',
      theme: ThemeData.light(),
      home: const FoodieSplashPage(),
    );
  }
}
