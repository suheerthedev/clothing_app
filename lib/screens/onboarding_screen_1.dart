import 'package:clothing_store_app/util/app_colors.dart';
import 'package:clothing_store_app/util/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreen1State();
}

class _OnboardingScreen1State extends State<OnboardingScreen> {
  final _controller = PageController();
  int currentPage = 0;

  void _goToNextPage() {
    if (currentPage < 2) {
      setState(() {
        currentPage++;
        _controller.animateToPage(currentPage,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut);
      });
    }
  }

  void _goToPreviousPage() {
    setState(() {
      currentPage--;
      _controller.animateToPage(currentPage,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    });
  }

  void _goToSignInScreen() {
    Navigator.pushReplacementNamed(context, '/signinscreen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                controller: _controller,
                children: [
                  Center(
                      child: SvgPicture.asset(AppImages.onboardingScreenImage)),
                  SvgPicture.asset(AppImages.onboardingScreenImage),
                  SvgPicture.asset(AppImages.onboardingScreenImage),
                ]),
            Positioned(
                right: 20,
                top: 18,
                child: InkWell(
                  onTap: _goToSignInScreen,
                  child: Text('Skip',
                      style: TextStyle(
                          fontSize: 17,
                          color: AppColors.secondaryTextColor,
                          fontWeight: FontWeight.w500)),
                )),
            Positioned(
              top: 510,
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                width: 370,
                height: 150,
                decoration: BoxDecoration(
                    color: AppColors.surfaceColor,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, -2),
                          blurRadius: 50,
                          spreadRadius: 0.5)
                    ],
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 9, right: 9),
                      child: Text.rich(
                        textAlign: TextAlign.center,
                        TextSpan(children: [
                          TextSpan(
                              text: currentPage == 0
                                  ? 'Seamless'
                                  : currentPage == 1
                                      ? 'Wishlist: Where'
                                      : 'Swift ',
                              style: currentPage == 0
                                  ? TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.secondaryTextColor)
                                  : currentPage == 1
                                      ? TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.primaryTextColor)
                                      : TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.secondaryTextColor)),
                          TextSpan(
                              text: currentPage == 0
                                  ? ' Shopping Experience'
                                  : currentPage == 1
                                      ? ' Fashion Dreams '
                                      : 'and ',
                              style: currentPage == 0
                                  ? TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.primaryTextColor)
                                  : currentPage == 1
                                      ? TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.secondaryTextColor)
                                      : TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.primaryTextColor)),
                          TextSpan(
                              text: currentPage == 1
                                  ? 'Begin'
                                  : currentPage == 2
                                      ? 'Relaible'
                                      : null,
                              style: currentPage == 1
                                  ? TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.primaryTextColor)
                                  : TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.secondaryTextColor)),
                          TextSpan(
                              text: currentPage == 2 ? ' Delivery' : null,
                              style: currentPage == 2
                                  ? TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.primaryTextColor)
                                  : null),
                        ]),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          right: 10, left: 10, bottom: 0, top: 0),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adispiscing elit, sed do eiusmod tempor incididunt',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: AppColors.primaryTextColor),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Visibility(
                          maintainState: true,
                          maintainSize: true,
                          maintainAnimation: true,
                          visible: currentPage == 0 ? false : true,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.surfaceColor,
                                  shape: const CircleBorder(),
                                  side: BorderSide(
                                      color: AppColors.secondaryColor,
                                      style: BorderStyle.solid)),
                              onPressed:
                                  currentPage == 0 ? null : _goToPreviousPage,
                              child: Icon(
                                Icons.arrow_back,
                                color: AppColors.secondaryIconColor,
                              )),
                        ),
                        // const SizedBox(
                        //   width: 150,
                        // ),
                        SmoothPageIndicator(
                          controller: _controller,
                          count: 3,
                          effect: WormEffect(
                              activeDotColor: AppColors.secondaryColor),
                        ),
                        // const SizedBox(
                        //   width: 70,
                        // ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.secondaryColor,
                                shape: const CircleBorder(),
                                side: BorderSide(
                                    style: BorderStyle.solid,
                                    color: AppColors.secondaryColor)),
                            onPressed: currentPage == 2
                                ? _goToSignInScreen
                                : _goToNextPage,
                            child: Icon(
                              Icons.arrow_forward,
                              color: AppColors.onPrimaryIconColor,
                            )),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
