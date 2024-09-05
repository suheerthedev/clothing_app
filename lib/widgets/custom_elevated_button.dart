import 'package:clothing_store_app/util/app_colors.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, required this.btnText});
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(325, 50),
            backgroundColor: AppColors.secondaryColor),
        onPressed: () {
          //Navigate to Other Screen
        },
        child: Text(
          btnText,
          style: TextStyle(color: AppColors.onPrimaryTextColor),
        ));
  }
}
