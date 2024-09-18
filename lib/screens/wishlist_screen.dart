import 'package:clothing_store_app/util/data.dart';
import 'package:clothing_store_app/widgets/custom_product_grid_item.dart';
import 'package:clothing_store_app/widgets/custom_screen_app_bar.dart';
import 'package:clothing_store_app/widgets/custom_tabbar_widget.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
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
              wishlist.isEmpty
                  ? Center(
                      child: Text(
                          'No items in the wishlist.')) // Display this if wishlist is empty
                  : GridView.builder(
                      // Display GridView if wishlist is not empty
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemCount: wishlist.length,
                      itemBuilder: (context, index) {
                        return ProductGridItem(
                            product: wishlist[index],
                            onLikeToggle: () {
                              setState(() {
                                wishlist[index]['isLiked'] =
                                    !wishlist[index]['isLiked'];
                                if (!wishlist[index]['isLiked']) {
                                  wishlist.removeAt(index);
                                }
                              });
                            });
                      },
                    )
            ],
          ),
        ),
      ),
    );
  }
}
