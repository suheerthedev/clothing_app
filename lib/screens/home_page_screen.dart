import 'package:carousel_slider/carousel_slider.dart';
import 'package:clothing_store_app/util/app_colors.dart';
import 'package:clothing_store_app/widgets/custom_app_bar_widget.dart';
import 'package:clothing_store_app/widgets/custom_banner_widget.dart';
import 'package:clothing_store_app/widgets/custom_navbar.dart';
import 'package:clothing_store_app/widgets/custom_search_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  int _carouselCurrentIndex = 0;
  List<String> promoBanners = [
    'assets/images/promobanner1.svg',
    'assets/images/promobanner2.svg',
    'assets/images/promobanner3.svg',
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
          //Search Bar
          CustomSearchBarWidget(size: size),
          //Search Bar Ended
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            child: CarouselSlider.builder(
              carouselController: _carouselController,
              options: CarouselOptions(
                  viewportFraction: 1,
                  height: size.height * 0.2,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _carouselCurrentIndex = index;
                    });
                  }),
              itemCount: promoBanners.length,
              itemBuilder: (context, index, realIndex) => CustomBannerWidget(
                  size: size, svgImageUrl: promoBanners[index]),
            ),
          ),
          SizedBox(
            child: AnimatedSmoothIndicator(
              activeIndex: _carouselCurrentIndex,
              count: promoBanners.length,
              effect: ScrollingDotsEffect(
                  activeDotColor: AppColors.primaryIconColor,
                  dotColor: AppColors.secondaryIconColor,
                  dotHeight: 4,
                  dotWidth: 25),
              onDotClicked: (index) {
                _carouselController.animateToPage(index);
              },
            ),
          ),
          CustomSectionHeadingWidget()
        ],
      ),
    );
  }
}

class CustomSectionHeadingWidget extends StatelessWidget {
  const CustomSectionHeadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Catergory',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        TextButton(onPressed: () {}, child: const Text("See All"))
      ],
    );
  }
}
