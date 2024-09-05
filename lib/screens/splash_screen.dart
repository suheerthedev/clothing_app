import 'dart:async';

import 'package:clothing_store_app/util/app_colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/welcomescreen');
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Positioned(
                top: -screenHeight * 0.05,
                right: -screenWidth * 0.1,
                child: Material(
                  elevation: 10,
                  shape: const CircleBorder(),
                  child: SizedBox.square(
                    dimension: 130,
                    child: CircleAvatar(
                      backgroundColor: AppColors.surfaceColor,
                    ),
                  ),
                ),
              ),
              Center(
                child: SizedBox.square(
                  dimension: 200,
                  child: Image.asset('assets/images/fashionlogo.png'),
                ),
              ),
              Positioned(
                bottom: -screenHeight * 0.1,
                left: -screenWidth * 0.1,
                child: Material(
                  elevation: 25,
                  shape: const CircleBorder(),
                  child: SizedBox.square(
                    dimension: 220,
                    child: CircleAvatar(
                      backgroundColor: AppColors.surfaceColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
