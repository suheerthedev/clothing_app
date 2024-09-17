import 'package:clothing_store_app/widgets/custom_product_details_slider.dart';
import 'package:clothing_store_app/widgets/custom_screen_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductImageSlider extends StatefulWidget {
  const ProductImageSlider({
    super.key,
    required this.images,
  });
  final List<String> images;

  @override
  State<ProductImageSlider> createState() => _ProductImageSliderState();
}

class _ProductImageSliderState extends State<ProductImageSlider> {
  int selectedImageIndex = 0;
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
                child: Center(
                    child: SvgPicture.asset(
                  widget.images[selectedImageIndex],
                  key: ValueKey<int>(selectedImageIndex),
                )),
              )),
          const CustomScreenAppBar(
            title: '',
            isLeading: true,
            color: Colors.transparent,
            isActionable: true,
          ),
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
                itemCount: widget.images.length,
                separatorBuilder: (_, __) => const SizedBox(width: 5),
                itemBuilder: (_, index) {
                  return InkWell(
                    onTap: () {
                      print('Tapped on image $index');
                      setState(() {
                        selectedImageIndex = index;
                      });
                    },
                    child: CustomProductDetailsSlider(
                      width: 80,
                      padding: const EdgeInsets.only(
                          top: 8, left: 8, right: 8, bottom: 0),
                      applyImageRadius: false,
                      imagePath: widget.images[index],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
