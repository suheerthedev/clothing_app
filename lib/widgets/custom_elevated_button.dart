import 'package:clothing_store_app/util/app_colors.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key, required this.btnText, required this.onPressed});
  final String btnText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(325, 50),
            backgroundColor: AppColors.secondaryColor),
        onPressed: onPressed,
        child: Text(
          btnText,
          style: TextStyle(color: AppColors.onPrimaryTextColor),
        ));
  }
}
