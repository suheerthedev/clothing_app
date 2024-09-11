import 'package:clothing_store_app/util/app_colors.dart';
import 'package:flutter/material.dart';

class CustomPricingTitleWidget extends StatelessWidget {
  const CustomPricingTitleWidget({
    super.key,
    required this.title,
    required this.price,
  });
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              color: AppColors.primaryTextColor,
              fontSize: 16,
              fontWeight: FontWeight.normal),
        ),
        Text(
          price,
          style: TextStyle(
              color: AppColors.primaryTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
