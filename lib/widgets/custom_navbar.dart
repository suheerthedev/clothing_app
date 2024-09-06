import 'package:clothing_store_app/screens/authentication_screens/complete_profile_screen.dart';
import 'package:clothing_store_app/screens/authentication_screens/create_account_screen.dart';
import 'package:clothing_store_app/screens/authentication_screens/sign_in_screen.dart';
import 'package:clothing_store_app/screens/authentication_screens/verification_screen.dart';
import 'package:clothing_store_app/util/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../screens/authentication_screens/change_password_screen.dart';

class CustomNavbar extends StatefulWidget {
  CustomNavbar({super.key});

  @override
  State<CustomNavbar> createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  int _currentIndex = 2;
  List<Widget> body = const [
    SignInScreen(),
    CreateAccountScreen(),
    VerificationScreen(),
    ChangePasswordScreen(),
    CompleteProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
        indicatorColor: AppColors.surfaceColor,
        backgroundColor: AppColors.primaryColor,
        height: 80,
        elevation: 20,
        selectedIndex: _currentIndex,
        onDestinationSelected: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        destinations: [
          NavigationDestination(
              icon: Icon(
                _currentIndex == 0 ? Iconsax.home_15 : Iconsax.home,
                color: _currentIndex == 0
                    ? AppColors.secondaryColor
                    : AppColors.onPrimaryIconColor,
              ),
              label: ""),
          NavigationDestination(
              icon: Icon(
                _currentIndex == 1
                    ? Iconsax.shopping_bag5
                    : Iconsax.shopping_bag,
                color: _currentIndex == 1
                    ? AppColors.secondaryColor
                    : AppColors.onPrimaryIconColor,
              ),
              label: ""),
          NavigationDestination(
              icon: Icon(
                _currentIndex == 2 ? Iconsax.heart5 : Iconsax.heart,
                color: _currentIndex == 2
                    ? AppColors.secondaryColor
                    : AppColors.onPrimaryIconColor,
              ),
              label: ""),
          NavigationDestination(
              icon: Icon(
                _currentIndex == 3 ? Iconsax.message5 : Iconsax.message,
                color: _currentIndex == 3
                    ? AppColors.secondaryColor
                    : AppColors.onPrimaryIconColor,
              ),
              label: ""),
          NavigationDestination(
              icon: Icon(
                Iconsax.user,
                color: _currentIndex == 4
                    ? AppColors.secondaryColor
                    : AppColors.onPrimaryIconColor,
              ),
              label: ""),
        ]);
  }
}
