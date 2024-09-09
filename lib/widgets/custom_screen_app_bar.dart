import 'package:clothing_store_app/util/app_colors.dart';
import 'package:clothing_store_app/widgets/custom_back_button.dart';
import 'package:flutter/material.dart';

class CustomScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;

  const CustomScreenAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.surfaceColor,
      leading: const CustomBackButton(),
      title: Text(
        title,
        style: TextStyle(
            color: AppColors.primaryTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 24),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
