import 'package:clothing_store_app/util/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomScreenAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final bool isLeading;
  final Color? color;
  final bool isActionable;

  const CustomScreenAppBar(
      {super.key,
      required this.title,
      required this.isLeading,
      this.color = Colors.white,
      required this.isActionable});

  @override
  State<CustomScreenAppBar> createState() => _CustomScreenAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomScreenAppBarState extends State<CustomScreenAppBar> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 50,
      centerTitle: true,
      automaticallyImplyLeading: false,
      backgroundColor: widget.color,
      leading: widget.isLeading
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
        widget.title,
        style: TextStyle(
            color: AppColors.primaryTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 24),
      ),
      actions: widget.isActionable
          ? [
              Container(
                margin: EdgeInsetsDirectional.symmetric(horizontal: 5),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: AppColors.surfaceColor,
                    borderRadius: BorderRadius.circular(25)),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      isLiked = !isLiked;
                    });
                  },
                  icon: Icon(isLiked ? Iconsax.heart5 : Iconsax.heart),
                  color: isLiked
                      ? const Color(0xff704f38)
                      : const Color(0xff704f38),
                ),
              ),
            ]
          : null,
    );
  }
}
