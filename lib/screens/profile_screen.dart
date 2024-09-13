import 'package:clothing_store_app/util/app_colors.dart';
import 'package:clothing_store_app/util/app_images.dart';
import 'package:clothing_store_app/widgets/custom_profile_screen_listview.dart';
import 'package:clothing_store_app/widgets/custom_screen_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String userName = "Suheer Khan";
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CustomScreenAppBar(
        title: 'Profile',
        isLeading: false,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //Profile Image
          SizedBox.square(
            dimension: 120,
            child: CircleAvatar(
              child: SvgPicture.asset(AppImages.profileImageIcon),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            userName,
            style: TextStyle(
              color: AppColors.primaryTextColor,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),

          const Expanded(child: CustomProfileScreenListview()),
        ],
      ),
    );
  }
}
