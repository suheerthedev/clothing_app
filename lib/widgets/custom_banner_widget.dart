import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBannerWidget extends StatelessWidget {
  const CustomBannerWidget({
    super.key,
    required this.size,
    required this.svgImageUrl,
  });

  final Size size;
  final String svgImageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.9,
      height: size.height * 0.2,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: SvgPicture.asset(
          svgImageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
