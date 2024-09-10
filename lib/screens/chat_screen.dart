import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          """Chat Screen
      Building In Progress""",
          style: TextStyle(fontSize: 44, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
