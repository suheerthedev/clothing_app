import 'package:clothing_store_app/util/app_images.dart';
import 'package:clothing_store_app/widgets/custom_navbar.dart';
import 'package:clothing_store_app/widgets/custom_screen_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CustomScreenAppBar(title: "My Cart"),
      bottomNavigationBar: CustomNavbar(),
      body: Container(
        color: Colors.amber,
        height: size.height * 0.1,
        width: size.width * 1,
        child: Row(
          children: [
            SizedBox(
                height: 200,
                width: 100,
                child: SvgPicture.asset(AppImages.productImage1)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Brown Jacket"),
                const Text("Size: XL"),
                const Text("\$83.97"),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox.square(
                        dimension: 20,
                        child: FloatingActionButton(
                            shape: const LinearBorder(),
                            mini: true,
                            onPressed: () {})),
                    const Text("1"),
                    SizedBox.square(
                        dimension: 20,
                        child: FloatingActionButton(
                            shape: const LinearBorder(),
                            mini: true,
                            onPressed: () {})),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
