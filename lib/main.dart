import 'package:clothing_store_app/screens/change_password_screen.dart';
import 'package:clothing_store_app/screens/complete_profile_screen.dart';
import 'package:clothing_store_app/screens/create_account_screen.dart';
import 'package:clothing_store_app/screens/onboarding_screen_1.dart';
import 'package:clothing_store_app/screens/sign_in_screen.dart';
import 'package:clothing_store_app/screens/splash_screen.dart';
import 'package:clothing_store_app/screens/verification_screen.dart';
import 'package:clothing_store_app/screens/welcome_screen.dart';
import 'package:clothing_store_app/util/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clothing App',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Montserrat',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
          textTheme: TextTheme(
              headlineLarge: TextStyle(
                  color: AppColors.primaryTextColor,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
              headlineSmall: TextStyle(
                  color: AppColors.primaryTextColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w400))),
      home: const SplashScreen(),
      routes: {
        '/splashscreen': (context) => const SplashScreen(),
        '/welcomescreen': (context) => const WelcomeScreen(),
        '/onboardingscreen1': (context) => const OnboardingScreen(),
        '/signinscreen': (context) => const SignInScreen(),
        '/createaccountscreen': (context) => const CreateAccountScreen(),
        '/verficationscreen': (context) => const VerificationScreen(),
        '/changepasswordscreen': (context) => const ChangePasswordScreen(),
        '/completeprofilescreen': (context) => const CompleteProfileScreen(),
      },
    );
  }
}
