import 'package:clothing_store_app/util/app_images.dart';
import 'package:clothing_store_app/widgets/horizontal_product_item.dart';
import 'package:flutter/material.dart';

class CustomProductListview extends StatefulWidget {
  CustomProductListview({super.key});

  @override
  State<CustomProductListview> createState() => _CustomProductListviewState();
}

class _CustomProductListviewState extends State<CustomProductListview> {
  List<Map<String, dynamic>> productDetails = [
    {
      "imagePath": AppImages.productImage1,
      'productTitle': "Brown Jacket",
      "productSize": "Size: M",
      "productPrice": "\$83.97",
    },
    {
      "imagePath": AppImages.productImage2,
      'productTitle': "Brown Suite",
      "productSize": "Size: L",
      "productPrice": "\$120.00",
    },
    {
      "imagePath": AppImages.productImage3,
      'productTitle': "Jacket",
      "productSize": "Size: XL",
      "productPrice": "\$83.00",
    },
    {
      "imagePath": AppImages.productImage4,
      'productTitle': "Straight Fit",
      "productSize": "Size: S",
      "productPrice": "\$120.00",
    },
    {
      "imagePath": AppImages.productImage5,
      'productTitle': "Brown Pant",
      "productSize": "Size: S",
      "productPrice": "\$98.00",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: productDetails.length,
        itemBuilder: (context, index) {
          return HorizontalProductItem(
            product: productDetails[index],
            deleteFromCart: () {
              setState(() {
                productDetails.removeAt(index);
              });
            },
          );
        });
  }
}
