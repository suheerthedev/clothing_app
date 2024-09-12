import 'package:clothing_store_app/util/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
//             Icon(
//               Iconsax.emoji_sad4,
//               size: 100,
//             ),
//             Text(
//               """Profile Screen
// Building In Progress""",
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
//             ),
            SizedBox.square(
              dimension: 120,
              child: CircleAvatar(
                child: SvgPicture.asset(AppImages.profileImageIcon),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
