import 'package:clothing_store_app/screens/create_account_screen.dart';
import 'package:clothing_store_app/screens/onboarding_screen_1.dart';
import 'package:clothing_store_app/screens/sign_in_screen.dart';
import 'package:clothing_store_app/screens/splash_screen.dart';
import 'package:clothing_store_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clothing App',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
      ),
      home: const CreateAccountScreen(),
      routes: {
        '/splashscreen': (context) => const SplashScreen(),
        '/welcomescreen': (context) => const WelcomeScreen(),
        '/onboardingscreen1': (context) => const OnboardingScreen(),
        '/signinscreen': (context) => const SignInScreen(),
        '/createaccountscreen': (context) => const CreateAccountScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Text('Flutter App'),
    ),
    body: const Center(),
  );
}
