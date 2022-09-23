import 'package:firebase_crud/configs/themes/app_colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(gradient: mainGradient(context)),
        child:  Image.asset("assets/images/app_splash_logo.png",
          width: 200,
          height: 200,
        ),
      )
    );
  }
}
