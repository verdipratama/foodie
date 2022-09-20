import 'package:flutter/material.dart';
import 'package:foodie/theme.dart';

class FoodieSplashPage extends StatelessWidget {
  const FoodieSplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: DeviceSize.height(context),
        width: DeviceSize.width(context),
        color: Colors.black,
        child: Stack(
          alignment: Alignment.center,
          children: const [
            Text(
              'FOODIE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 45.0,
              ),
            ),
            Positioned(
              bottom: 25.0,
              child: Text(
                '1.3.3.7',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
