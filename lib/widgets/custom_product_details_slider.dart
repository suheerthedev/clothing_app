import 'package:clothing_store_app/util/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomProductDetailsSlider extends StatelessWidget {
  const CustomProductDetailsSlider(
      {super.key,
      this.width,
      this.height,
      this.padding,
      this.borderRadius = 15,
      required this.imagePath,
      this.fit = BoxFit.contain,
      required this.applyImageRadius});
  final double? width, height;
  final EdgeInsetsGeometry? padding;
  final double borderRadius;
  final String imagePath;
  final BoxFit fit;
  final bool applyImageRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent),
        color: AppColors.surfaceColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: ClipRRect(
        borderRadius: applyImageRadius
            ? BorderRadius.circular(borderRadius)
            : BorderRadius.zero,
        child: SvgPicture.asset(imagePath, fit: fit),
      ),
    );
  }
}
