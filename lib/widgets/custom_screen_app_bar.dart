import 'package:clothing_store_app/util/app_colors.dart';
import 'package:flutter/material.dart';

class CustomScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String title;
  final bool isLeading;

  const CustomScreenAppBar(
      {super.key, required this.title, required this.isLeading});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 50,
      centerTitle: true,
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.surfaceColor,
      leading: isLeading
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: AppColors.surfaceColor,
                      shape: const CircleBorder(),
                      side: BorderSide(
                          color: AppColors.primaryColor,
                          style: BorderStyle.solid)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: AppColors.primaryIconColor,
                  )),
            )
          : null,
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
