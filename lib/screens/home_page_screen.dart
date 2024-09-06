import 'package:clothing_store_app/screens/authentication_screens/change_password_screen.dart';
import 'package:clothing_store_app/screens/authentication_screens/complete_profile_screen.dart';
import 'package:clothing_store_app/screens/authentication_screens/create_account_screen.dart';
import 'package:clothing_store_app/screens/authentication_screens/sign_in_screen.dart';
import 'package:clothing_store_app/screens/authentication_screens/verification_screen.dart';
import 'package:clothing_store_app/util/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
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
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.surfaceColor,
        title: Column(
          children: [
            //AppBar Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //AppBar Text Column
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Location',
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 12),
                    ),
                    //Second Text Row
                    Row(
                      children: [
                        Icon(Iconsax.location5,
                            color: AppColors.secondaryIconColor, size: 15),
                        const SizedBox(width: 3),
                        const Text(
                          "New York, USA",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(width: 13),
                        Icon(
                          Iconsax.arrow_down5,
                          color: AppColors.primaryIconColor,
                        )
                      ],
                    ),
                  ],
                ),
                //Right Icon On AppBar
                Icon(
                  Iconsax.shopping_bag,
                  color: AppColors.primaryIconColor,
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
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
          ]),
      body: Column(
        children: [
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 0),
                child: Container(
                  width: size.width * 0.83,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: AppColors.surfaceColor,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: AppColors.primaryColor)),
                  child: Row(
                    children: [
                      Icon(
                        Iconsax.search_normal,
                        color: AppColors.secondaryIconColor,
                      ),
                      const SizedBox(width: 15),
                      const Text(
                        'Search',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 10, right: 0, left: 0, top: 8),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Iconsax.sort,
                      size: 30,
                      color: AppColors.primaryIconColor,
                    )),
              ),
            ],
          ),
          //Search Bar Ended
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(150),
              child: SizedBox(
                width: 300,
                child: SvgPicture.asset(
                  'assets/images/promobanner.svg',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
