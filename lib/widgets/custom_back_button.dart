import 'package:clothing_store_app/util/app_colors.dart';
import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.primaryColor, width: 0.5)),
        child: CircleAvatar(
          backgroundColor: AppColors.surfaceColor,
          child: IconButton(
              onPressed: () {
                //Navigate to previous screen
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: AppColors.primaryIconColor,
              )),
        ),
      ),
    );
  }
}
