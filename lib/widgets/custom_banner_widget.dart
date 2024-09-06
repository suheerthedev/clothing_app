import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomBannerWidget extends StatelessWidget {
  const CustomBannerWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: size.width * 0.9, // Responsive width
        height: size.height * 0.22,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: ClipRRect(
          borderRadius:
              BorderRadius.circular(10.0), // Rounded edges for each banner
          child: SvgPicture.asset(
            'assets/images/promobanner1.svg',
            fit: BoxFit.cover, // Fill the entire container
          ),
        ),
      ),
    );
  }
}
