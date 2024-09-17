import 'package:clothing_store_app/widgets/custom_product_details_slider.dart';
import 'package:clothing_store_app/widgets/custom_screen_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
    required this.images,
  });
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffeee5db),
      child: Stack(
        children: [
          SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Center(child: SvgPicture.asset(images[0])),
              )),
          //Slider
          Positioned(
            right: 0,
            bottom: 30,
            left: 12,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: images.length,
                separatorBuilder: (_, __) => const SizedBox(width: 5),
                itemBuilder: (_, index) {
                  return CustomProductDetailsSlider(
                    width: 80,
                    padding: const EdgeInsets.only(
                        top: 8, left: 8, right: 8, bottom: 0),
                    applyImageRadius: false,
                    imagePath: images[index],
                  );
                },
              ),
            ),
          ),
          const CustomScreenAppBar(
            title: '',
            isLeading: true,
            color: Colors.transparent,
            isActionable: true,
          )
        ],
      ),
    );
  }
}
