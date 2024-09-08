import 'package:carousel_slider/carousel_slider.dart';
import 'package:clothing_store_app/util/app_colors.dart';
import 'package:clothing_store_app/widgets/custom_app_bar_widget.dart';
import 'package:clothing_store_app/widgets/custom_banner_widget.dart';
import 'package:clothing_store_app/widgets/custom_category_slider.dart';
import 'package:clothing_store_app/widgets/custom_navbar.dart';
import 'package:clothing_store_app/widgets/custom_search_bar_widget.dart';
import 'package:clothing_store_app/widgets/custom_section_heading_widget.dart';
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

  List fliterList = ["All", "Newest", "Popular", "Man", "Women", "Kids"];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return DefaultTabController(
      length: fliterList.length,
      child: Scaffold(
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
            //Carousel Started
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
            //Carousel Ended
            //Category Slider Started
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CustomSectionHeadingWidget(
                      textColor: AppColors.primaryTextColor,
                      showActionButton: true,
                      title: "Category",
                      buttonTitle: "See All",
                      onPressed: () {}),
                  const CustomCategorySlider(),
                ],
              ),
            ),
            //Category Slider Started

            TabBar(
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                indicatorColor: AppColors.secondaryColor,
                labelColor: AppColors.primaryColor,
                padding: EdgeInsets.zero,
                tabs: [
                  Tab(
                    child: Text(fliterList[0]),
                  ),
                  Tab(
                    child: Text(fliterList[1]),
                  ),
                  Tab(
                    child: Text(fliterList[2]),
                  ),
                  Tab(
                    child: Text(fliterList[3]),
                  ),
                  Tab(
                    child: Text(fliterList[4]),
                  ),
                  Tab(
                    child: Text(fliterList[5]),
                  ),
                ])
          ],
        ),
      ),
    );
  }
}
