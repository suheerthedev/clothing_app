import 'package:flutter/material.dart';
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
            Positioned(
                right: 20,
                top: 10,
                child: InkWell(
                  onTap: _goToSignInScreen,
                  child: const Text('Skip',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.brown,
                          fontWeight: FontWeight.w500)),
                )),
            PageView(
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                controller: _controller,
                children: [
                  Center(child: Image.asset('assets/images/iphone.png')),
                  Image.asset('assets/images/iphone.png'),
                  Image.asset('assets/images/iphone.png'),
                ]),
            Positioned(
              top: 510,
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                width: 370,
                height: 150,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, -2),
                          blurRadius: 50,
                          spreadRadius: 0.5)
                    ],
                    borderRadius: BorderRadius.only(
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
                                  ? const TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.brown)
                                  : currentPage == 1
                                      ? const TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)
                                      : const TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.brown)),
                          TextSpan(
                              text: currentPage == 0
                                  ? ' Shopping Experience'
                                  : currentPage == 1
                                      ? ' Fashion Dreams '
                                      : 'and ',
                              style: currentPage == 0
                                  ? const TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)
                                  : currentPage == 1
                                      ? const TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.brown)
                                      : const TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)),
                          TextSpan(
                              text: currentPage == 1
                                  ? 'Begin'
                                  : currentPage == 2
                                      ? 'Relaible'
                                      : null,
                              style: currentPage == 1
                                  ? const TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)
                                  : const TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.brown)),
                          TextSpan(
                              text: currentPage == 2 ? ' Delivery' : null,
                              style: currentPage == 2
                                  ? const TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)
                                  : null),
                        ]),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adispiscing elit, sed do eiusmod tempor incididunt',
                        textAlign: TextAlign.center,
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
                                  backgroundColor: Colors.white,
                                  shape: const CircleBorder(),
                                  side: const BorderSide(
                                      color: Colors.brown,
                                      style: BorderStyle.solid)),
                              onPressed:
                                  currentPage == 0 ? null : _goToPreviousPage,
                              child: const Icon(
                                Icons.arrow_back,
                                color: Colors.brown,
                              )),
                        ),
                        // const SizedBox(
                        //   width: 150,
                        // ),
                        SmoothPageIndicator(
                          controller: _controller,
                          count: 3,
                          effect:
                              const WormEffect(activeDotColor: Colors.brown),
                        ),
                        // const SizedBox(
                        //   width: 70,
                        // ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.brown,
                                shape: const CircleBorder(),
                                side: const BorderSide(
                                    style: BorderStyle.solid,
                                    color: Colors.brown)),
                            onPressed: currentPage == 2
                                ? _goToSignInScreen
                                : _goToNextPage,
                            child: const Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
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
