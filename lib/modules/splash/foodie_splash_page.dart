import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:foodie/modules/layouts/foodie_main_layout.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';

class FoodieSplashPage extends StatelessWidget {
  const FoodieSplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      title: Text(
        "FOODIE",
        style: GoogleFonts.righteous(
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 45.0,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                color: Colors.orange.withOpacity(0.4),
                offset: const Offset(4.0, 4.0),
                blurRadius: 10,
              ),
            ],
          ),
        ),
      ),
      loadingText: const Text(
        "1.3.3.7",
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
      showLoader: true,
      navigator: const FoodieMainLayouts(),
      backgroundColor: Colors.black,
    );
  }
}
