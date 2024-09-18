import 'package:clothing_store_app/util/app_colors.dart';
import 'package:clothing_store_app/util/app_images.dart';
import 'package:clothing_store_app/util/data.dart';
import 'package:clothing_store_app/widgets/horizontal_product_item.dart';
import 'package:flutter/material.dart';

class CustomProductListview extends StatefulWidget {
  const CustomProductListview({super.key});

  @override
  State<CustomProductListview> createState() => _CustomProductListviewState();
}

class _CustomProductListviewState extends State<CustomProductListview> {
  List<Map<String, dynamic>> productDetails = [
    {
      "imagePath": AppImages.productImage1,
      'productTitle': "Oversized T-shirt",
      "productSize": "Size: M",
      "productPrice": "\$83.97",
    },
    {
      "imagePath": AppImages.productImage2,
      'productTitle': "Chino Pant",
      "productSize": "Size: L",
      "productPrice": "\$120.00",
    },
    {
      "imagePath": AppImages.productImage3,
      'productTitle': "Leather Jacket",
      "productSize": "Size: XL",
      "productPrice": "\$83.00",
    },
    {
      "imagePath": AppImages.productImage4,
      'productTitle': "Abaya",
      "productSize": "Size: S",
      "productPrice": "\$120.00",
    },
    {
      "imagePath": AppImages.productImage5,
      'productTitle': "Long Coat",
      "productSize": "Size: S",
      "productPrice": "\$98.00",
    },
    {
      "imagePath": AppImages.productImage6,
      'productTitle': "Polo",
      "productSize": "Size: M",
      "productPrice": "\$28.00",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          return HorizontalProductItem(
            product: productDetails[index],
            deleteFromCart: () {
              return showModalBottomSheet(
                context: context,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                builder: (context) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    height: 250,
                    decoration: BoxDecoration(
                        color: AppColors.surfaceColor,
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(20)),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              blurRadius: 20,
                              offset: Offset(0, 5))
                        ]),
                    child: Column(
                      children: [
                        Text(
                          "Remove from Cart?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.primaryTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: HorizontalProductItem(
                            product: productDetails[index],
                            deleteFromCart: () {},
                            isSlidable: false,
                            hasPrefixIcon: false,
                            hasIncrementAndDecrement: false,
                            decrementDeleteFromCart: () {},
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.surfaceColor),
                                  child: Text(
                                    "Cancel",
                                    style: TextStyle(
                                        color: AppColors.secondaryTextColor),
                                  )),
                            ),
                            const SizedBox(width: 5),
                            Expanded(
                              child: ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      cartItems.removeAt(index);
                                    });
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content:
                                                Text('Removed from cart!')));
                                    Navigator.pop(context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.secondaryColor,
                                  ),
                                  child: Text(
                                    "Yes, Remove",
                                    style: TextStyle(
                                        color: AppColors.onPrimaryTextColor),
                                  )),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              );
            },
            isSlidable: true,
            hasPrefixIcon: true,
            hasIncrementAndDecrement: true,
            decrementDeleteFromCart: () {
              setState(() {
                cartItems.removeAt(index);
              });
            },
          );
        });
  }
}
