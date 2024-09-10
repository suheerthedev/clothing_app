import 'package:clothing_store_app/util/app_colors.dart';
import 'package:clothing_store_app/widgets/custom_product_listview.dart';
import 'package:clothing_store_app/widgets/custom_screen_app_bar.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int quantityOfProduct = 1;
  void _productDecrement() {
    setState(() {
      quantityOfProduct--;
    });
  }

  void _productIncrement() {
    setState(() {
      quantityOfProduct++;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CustomScreenAppBar(title: "My Cart"),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color.fromARGB(55, 190, 190, 190),
          child: Stack(children: [
            CustomProductListview(),
            DraggableScrollableSheet(
                initialChildSize: 0.2,
                maxChildSize: 0.6,
                minChildSize: 0.1,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Container(
                    padding: const EdgeInsets.all(20),
                    height: 200,
                    decoration: BoxDecoration(
                      color: AppColors.secondaryColor,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    child: ListView(
                      controller: scrollController,
                      children: [
                        Text(
                          "Cart Summary",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColors.onPrimaryTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ])),
    );
  }
}
