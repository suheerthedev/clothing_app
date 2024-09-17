import 'package:clothing_store_app/util/app_colors.dart';
import 'package:clothing_store_app/widgets/product_image_slider.dart';
import 'package:readmore/readmore.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key, this.product});
  final Map<String, dynamic>? product;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int sizeSelectedIndex = 1;
  int colorSelectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    List sizes = ['S', 'M', 'L', 'XL', 'XXL', 'XXXL'];
    List productColors = [
      Colors.black,
      Colors.brown,
      Colors.grey,
      Colors.blue,
    ];

    List productColorNames = [
      'Black',
      'Brown',
      'Grey',
      'Blue',
    ];
    final List<String> images = widget.product?['imagePath'] ?? [];
    final String productTitle =
        widget.product?['productTitle'] ?? 'Unknown Product';
    final String price = widget.product?['price'] ?? '\$0.00';
    final String rating = widget.product?['rating'] ?? 'N/A';
    final String description = widget.product?['description'] ??
        'No description available'; // Dynamic description

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Product Image Slider
            images.isNotEmpty
                ? ProductImageSlider(images: images)
                : const Text('No images available'),
            //Product Detials
            Container(
              padding: const EdgeInsets.only(
                  top: 24, left: 24, right: 24, bottom: 0),
              width: double.infinity,
              height: 400,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          productTitle,
                          style: TextStyle(
                            color: AppColors.primaryTextColor,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Iconsax.star1,
                              color: Color(0xfffcaf23),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              rating,
                              style: TextStyle(
                                color: AppColors.primaryTextColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Product Details",
                          style: TextStyle(
                            color: AppColors.primaryTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        ReadMoreText(
                          description,
                          trimLines: 3,
                          trimMode: TrimMode.Line,
                          moreStyle: TextStyle(
                              decoration: TextDecoration.underline,
                              color: AppColors.secondaryColor,
                              fontWeight: FontWeight.w500),
                          lessStyle: TextStyle(
                              decoration: TextDecoration.underline,
                              color: AppColors.secondaryColor,
                              fontWeight: FontWeight.w500),
                          style: TextStyle(
                            color: AppColors.primaryTextColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Divider(
                      height: 2,
                      thickness: 2,
                      color: Color(0xffe6e6e6),
                    ),
                    const SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Select Size",
                          style: TextStyle(
                            color: AppColors.primaryTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 5),
                        SizedBox(
                            height: 25,
                            child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemCount: sizes.length,
                                separatorBuilder: (_, __) =>
                                    const SizedBox(width: 10),
                                itemBuilder: (context, index) {
                                  bool isSelected = index == sizeSelectedIndex;
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        sizeSelectedIndex = index;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: isSelected
                                              ? AppColors.secondaryColor
                                              : AppColors.surfaceColor,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          border:
                                              Border.all(color: Colors.black)),
                                      child: Center(
                                          child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text(
                                          sizes[index],
                                          style: TextStyle(
                                            color: isSelected
                                                ? AppColors.onPrimaryTextColor
                                                : AppColors.primaryTextColor,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      )),
                                    ),
                                  );
                                })),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Select Color: ${productColorNames[colorSelectedIndex]}",
                      style: TextStyle(
                        color: AppColors.primaryTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                        height: 25,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: productColors.length,
                            separatorBuilder: (_, __) =>
                                const SizedBox(width: 5),
                            itemBuilder: (context, index) {
                              bool isSelected = index == colorSelectedIndex;
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    colorSelectedIndex = index;
                                  });
                                },
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: productColors[index],
                                      shape: BoxShape.circle),
                                  child: isSelected
                                      ? const Center(
                                          child: Icon(
                                            Icons.circle,
                                            color: Colors.white,
                                            size: 16,
                                          ),
                                        )
                                      : const SizedBox.shrink(),
                                ),
                              );
                            })),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomSheet: BottomAppBar(
        elevation: 20,
        shadowColor: Colors.black,
        padding: EdgeInsets.zero,
        height: 70,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Total Price",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  Text(
                    price,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.secondaryColor,
                      iconColor: AppColors.onPrimaryIconColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(Iconsax.shopping_bag),
                        Text(
                          "Add To Cart",
                          style: TextStyle(color: AppColors.onPrimaryTextColor),
                        )
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
