import 'package:clothing_store_app/util/app_colors.dart';
import 'package:flutter/material.dart';

class CustomSignInAndUpText extends StatelessWidget {
  const CustomSignInAndUpText(
      {super.key,
      required this.onTap,
      required this.mainText,
      required this.clickableText});
  final VoidCallback onTap;
  final String mainText;
  final String clickableText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(mainText,
            style: TextStyle(
                color: AppColors.primaryTextColor,
                fontWeight: FontWeight.w400)),
        InkWell(
          onTap: onTap,
          child: Text(clickableText,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: AppColors.secondaryTextColor,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.secondaryTextColor)),
        )
      ],
    );
  }
}
