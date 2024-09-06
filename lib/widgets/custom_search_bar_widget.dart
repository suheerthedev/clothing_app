import 'package:clothing_store_app/util/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomSearchBarWidget extends StatelessWidget {
  const CustomSearchBarWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 0),
          child: Container(
            width: size.width * 0.83,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: AppColors.surfaceColor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: AppColors.primaryColor)),
            child: Row(
              children: [
                Icon(
                  Iconsax.search_normal,
                  color: AppColors.secondaryIconColor,
                ),
                const SizedBox(width: 15),
                const Text(
                  'Search',
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10, right: 0, left: 0, top: 8),
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Iconsax.sort,
                size: 30,
                color: AppColors.primaryIconColor,
              )),
        ),
      ],
    );
  }
}
