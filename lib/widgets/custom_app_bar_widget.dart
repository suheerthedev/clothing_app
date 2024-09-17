import 'package:clothing_store_app/util/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //AppBar Row
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //AppBar Text Column
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Location',
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 12),
                ),
                //Second Text Row
                Row(
                  children: [
                    Icon(Iconsax.location5,
                        color: AppColors.secondaryIconColor, size: 15),
                    const SizedBox(width: 3),
                    const Text(
                      "New York, USA",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(width: 13),
                    Icon(
                      Iconsax.arrow_down5,
                      color: AppColors.primaryIconColor,
                    )
                  ],
                ),
              ],
            ),
            //Right Icon On AppBar
            Badge(
              alignment: Alignment.topRight,
              textColor: AppColors.onPrimaryTextColor,
              label: const Text('1'),
              largeSize: 8,
              smallSize: 0,
              child: Icon(
                Iconsax.shopping_bag,
                color: AppColors.primaryIconColor,
              ),
            )
          ],
        ),
      ],
    );
  }
}
