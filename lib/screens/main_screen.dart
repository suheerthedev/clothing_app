import 'package:clothing_store_app/screens/cart_screen.dart';
import 'package:clothing_store_app/screens/chat_screen.dart';
import 'package:clothing_store_app/screens/home_page_screen.dart';
import 'package:clothing_store_app/screens/profile_screen.dart';
import 'package:clothing_store_app/screens/wishlist_screen.dart';
import 'package:clothing_store_app/util/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 2;

  final List<Widget> _screens = [
    const HomePageScreen(),
    const CartScreen(),
    const WishlistScreen(),
    const ChatScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(8),
        width: size.width * 0.8,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomAppBar(
            color: AppColors.primaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () => _onItemTapped(0),
                  icon: Icon(
                    _currentIndex == 0 ? Iconsax.home_15 : Iconsax.home,
                    color: _currentIndex == 0
                        ? AppColors.secondaryColor
                        : AppColors.onPrimaryIconColor,
                  ),
                ),
                IconButton(
                    onPressed: () => _onItemTapped(1),
                    icon: Icon(
                      _currentIndex == 1
                          ? Iconsax.shopping_bag5
                          : Iconsax.shopping_bag,
                      color: _currentIndex == 1
                          ? AppColors.secondaryColor
                          : AppColors.onPrimaryIconColor,
                    )),
                IconButton(
                  onPressed: () => _onItemTapped(2),
                  icon: Icon(
                    _currentIndex == 2 ? Iconsax.heart5 : Iconsax.heart,
                    color: _currentIndex == 2
                        ? AppColors.secondaryColor
                        : AppColors.onPrimaryIconColor,
                  ),
                ),
                IconButton(
                  onPressed: () => _onItemTapped(3),
                  icon: Icon(
                    _currentIndex == 3 ? Iconsax.message5 : Iconsax.message,
                    color: _currentIndex == 3
                        ? AppColors.secondaryColor
                        : AppColors.onPrimaryIconColor,
                  ),
                ),
                IconButton(
                  onPressed: () => _onItemTapped(4),
                  icon: Icon(
                    Iconsax.user,
                    color: _currentIndex == 4
                        ? AppColors.secondaryColor
                        : AppColors.onPrimaryIconColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
          child: IndexedStack(
        index: _currentIndex,
        children: _screens,
      )),
    );
  }
}
