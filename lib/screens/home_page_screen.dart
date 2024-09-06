import 'package:carousel_slider/carousel_slider.dart';
import 'package:clothing_store_app/util/app_colors.dart';
import 'package:clothing_store_app/widgets/custom_app_bar_widget.dart';
import 'package:clothing_store_app/widgets/custom_banner_widget.dart';
import 'package:clothing_store_app/widgets/custom_navbar.dart';
import 'package:clothing_store_app/widgets/custom_search_bar_widget.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  List<String> promoBanners = [
    'assets/images/promobanner1.svg',
    'assets/images/promobanner2.svg',
    'assets/images/promobanner3.svg',
    'assets/images/promobanner4.svg'
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.surfaceColor,
        title: const CustomAppBarWidget(),
      ),
      bottomNavigationBar: CustomNavbar(),
      body: Column(
        children: [
          const SizedBox(height: 5),
          //Search Bar
          CustomSearchBarWidget(size: size),
          //Search Bar Ended
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 1,
                  ),
                  items: [
                    CustomBannerWidget(
                      size: size,
                      svgImageUrl: 'assets/images/promobanner1.svg',
                    ),
                    CustomBannerWidget(
                      size: size,
                      svgImageUrl: 'assets/images/promobanner2.svg',
                    ),
                    CustomBannerWidget(
                      size: size,
                      svgImageUrl: 'assets/images/promobanner3.svg',
                    ),
                    CustomBannerWidget(
                      size: size,
                      svgImageUrl: 'assets/images/promobanner4.svg',
                    )
                  ])),
        ],
      ),
    );
  }
}
