import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Iconsax.emoji_sad4,
              size: 100,
            ),
            Text(
              """Profile Screen
Building In Progress""",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
