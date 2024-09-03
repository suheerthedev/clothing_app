import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Text('Sign In'),
          Text("Hi! Welcome back, you've been missed."),
          TextField(),
          TextField(),
        ],
      ),
    );
  }
}
