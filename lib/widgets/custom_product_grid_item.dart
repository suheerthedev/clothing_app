import 'package:clothing_store_app/util/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductGridItem extends StatelessWidget {
  final Map<String, dynamic> product;
  final VoidCallback onLikeToggle;

  const ProductGridItem({
    super.key,
    required this.product,
    required this.onLikeToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: 160,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          SizedBox(
            width: 160,
            height: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SvgPicture.asset(
                product['imagePath'],
                fit: BoxFit.cover,
              ),
            ),
          ),
          IconButton(
            onPressed: onLikeToggle,
            icon: FaIcon(
              product["isLiked"]
                  ? FontAwesomeIcons.solidHeart
                  : FontAwesomeIcons.heart,
              size: 15,
              color: product["isLiked"]
                  ? Colors.red
                  : AppColors.onPrimaryTextColor,
            ),
          ),
          Positioned(
            top: 125,
            left: 3,
            right: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product["productTitle"],
                      style: TextStyle(
                        color: AppColors.primaryTextColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Row(
                      children: [
                        const FaIcon(
                          FontAwesomeIcons.solidStar,
                          size: 15,
                          color: Color(0xfffcaf23),
                        ),
                        const SizedBox(width: 5),
                        Text(
                          product["rating"],
                          style: TextStyle(
                            color: AppColors.primaryTextColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 3),
                Text(
                  product['price'],
                  style: TextStyle(
                    color: AppColors.primaryTextColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
