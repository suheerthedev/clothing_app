import 'package:clothing_store_app/util/app_images.dart';
import 'package:clothing_store_app/widgets/custom_product_grid_item.dart';
import 'package:flutter/material.dart';

class CustomProductGridWidget extends StatefulWidget {
  const CustomProductGridWidget({super.key});

  @override
  State<CustomProductGridWidget> createState() =>
      _CustomProductGridWidgetState();
}

class _CustomProductGridWidgetState extends State<CustomProductGridWidget> {
  List<Map<String, dynamic>> productDetails = [
    {
      "imagePath": AppImages.productImage1,
      'productTitle': "Brown Jacket",
      "rating": "4.9",
      "price": "\$83.97",
      "isLiked": false,
    },
    {
      "imagePath": AppImages.productImage2,
      'productTitle': "Brown Suite",
      "rating": "5",
      "price": "\$120.00",
      "isLiked": false,
    },
    {
      "imagePath": AppImages.productImage3,
      'productTitle': "Jacket",
      "rating": "4.5",
      "price": "\$83.00",
      "isLiked": false,
    },
    {
      "imagePath": AppImages.productImage4,
      'productTitle': "Straight Fit",
      "rating": "3.9",
      "price": "\$120.00",
      "isLiked": false,
    },
    {
      "imagePath": AppImages.productImage5,
      'productTitle': "Brown Pant",
      "rating": "5",
      "price": "\$98.00",
      "isLiked": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: productDetails.length,
      itemBuilder: (context, index) {
        return ProductGridItem(
          product: productDetails[index],
          onLikeToggle: () {
            setState(() {
              productDetails[index]['isLiked'] =
                  !productDetails[index]['isLiked'];
            });
          },
        );
      },
    );
  }
}
