import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen1 extends StatefulWidget {
  const OnboardingScreen1({super.key});

  @override
  State<OnboardingScreen1> createState() => _OnboardingScreen1State();
}

class _OnboardingScreen1State extends State<OnboardingScreen1> {
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
                  onTap: () {
                    //Navigate to Login
                  },
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
                    const Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(children: [
                        TextSpan(
                            text: 'Seamless',
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown)),
                        TextSpan(
                            text: ' Shopping Experience',
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ]),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adispiscing elit, sed do eiusmod tempor incididunt',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 150,
                        ),
                        SmoothPageIndicator(
                          controller: _controller,
                          count: 3,
                          effect:
                              const WormEffect(activeDotColor: Colors.brown),
                        ),
                        const SizedBox(
                          width: 70,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: const CircleBorder()),
                            onPressed: _goToNextPage,
                            child: const Icon(Icons.arrow_forward)),
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
