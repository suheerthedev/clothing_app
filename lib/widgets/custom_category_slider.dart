import 'package:clothing_store_app/util/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCategorySlider extends StatelessWidget {
  const CustomCategorySlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List categoryIcons = [
      SvgPicture.asset('assets/images/shirticon.svg'),
      SvgPicture.asset('assets/images/panticon.svg'),
      SvgPicture.asset('assets/images/dressicon.svg'),
      SvgPicture.asset('assets/images/shoeicon.svg'),
      SvgPicture.asset('assets/images/glassesicons.svg'),
    ];
    return SizedBox(
      height: 56,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin:
                const EdgeInsets.only(right: 15, left: 15, top: 0, bottom: 0),
            width: 56,
            height: 56,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.circular(28)),
            child: categoryIcons[index],
          );
        },
        itemCount: categoryIcons.length,
      ),
    );
  }
}
