import 'package:clothing_store_app/widgets/custom_product_grid_widget.dart';
import 'package:clothing_store_app/widgets/custom_screen_app_bar.dart';
import 'package:clothing_store_app/widgets/custom_tabbar_widget.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List fliterList = [
      "All",
      "Jacket",
      "Shirt",
      "Pant",
      "T-Shirt",
      "Men",
      "Women"
    ];
    return DefaultTabController(
      length: fliterList.length,
      child: Scaffold(
        appBar: const CustomScreenAppBar(
          title: "My Wishlist",
          isLeading: false,
          isActionable: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomTabBarWidget(fliterList: fliterList),
              const CustomProductGridWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
