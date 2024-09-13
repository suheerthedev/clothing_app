import 'package:clothing_store_app/util/app_colors.dart';
import 'package:clothing_store_app/widgets/custom_pricing_title_widget.dart';
import 'package:clothing_store_app/widgets/custom_product_listview.dart';
import 'package:clothing_store_app/widgets/custom_screen_app_bar.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CustomScreenAppBar(
        title: "My Cart",
        isLeading: false,
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color.fromARGB(55, 190, 190, 190),
          child: Stack(children: [
            CustomProductListview(),
            DraggableScrollableSheet(
                snap: false,
                initialChildSize: 0.5,
                maxChildSize: 0.5,
                minChildSize: 0.1,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Container(
                    padding: const EdgeInsets.all(10),
                    height: 200,
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
                    child: ListView(
                      controller: scrollController,
                      children: [
                        Text(
                          "Cart Summary",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.primaryTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: size.width * 0.9,
                                height: 50,
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Promo Code",
                                      hintStyle:
                                          const TextStyle(color: Colors.grey),
                                      suffixIcon: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  AppColors.secondaryColor,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              )),
                                          onPressed: () {},
                                          child: Text(
                                            "Apply",
                                            style: TextStyle(
                                                color: AppColors
                                                    .onPrimaryTextColor),
                                          )),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(25))),
                                ),
                              ),
                            ]),
                        const SizedBox(height: 20),
                        const SizedBox(
                          height: 110,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: CustomPricingTitleWidget(
                                  title: 'Sub-Total',
                                  price: '\$407.94',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: CustomPricingTitleWidget(
                                  title: 'Delivery Fee',
                                  price: '\$25',
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: CustomPricingTitleWidget(
                                  title: 'Discount',
                                  price: '-\$35',
                                ),
                              ),
                              SizedBox(height: 5),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: CustomPricingTitleWidget(
                                  title: 'Total Cost',
                                  price: '\$397.94',
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.secondaryColor),
                            child: Text(
                              "Proceed to Checkout",
                              style: TextStyle(
                                  color: AppColors.onPrimaryTextColor),
                            ))
                      ],
                    ),
                  );
                }),
          ])),
    );
  }
}
