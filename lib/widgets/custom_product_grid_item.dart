import 'package:clothing_store_app/screens/product_details.dart';
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
    final String imagePath = (product['imagePath'] as List<String>).first;
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ProductDetails(product: product);
        }));
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        width: 160,
        height: 180,
        decoration: BoxDecoration(
          // color: Colors.red,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Container(
              padding:
                  const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 0),
              width: 160,
              height: 120,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                color: Color(0xffeee5db),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SvgPicture.asset(
                  imagePath,
                  fit: BoxFit.contain,
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
                    ? const Color(0xff704f38)
                    : AppColors.onPrimaryTextColor,
              ),
            ),
            Positioned(
              top: 125,
              left: 3,
              right: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          product["productTitle"],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: AppColors.primaryTextColor,
                            fontWeight: FontWeight.w500,
                          ),
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
      ),
    );
  }
}
