import 'package:clothing_store_app/util/app_images.dart';
import 'package:clothing_store_app/widgets/custom_profile_screen_listview.dart';
import 'package:clothing_store_app/widgets/custom_screen_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomScreenAppBar(title: 'Profile'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //Profile Image
            SizedBox.square(
              dimension: 120,
              child: CircleAvatar(
                child: SvgPicture.asset(AppImages.profileImageIcon),
              ),
            ),
            Expanded(child: CustomProfileScreenListview()),
          ],
        ),
      ),
    );
  }
}
