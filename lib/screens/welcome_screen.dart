import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 85,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: Container(
                    width: 160,
                    height: 400,
                    color: Colors.brown,
                    child: Image.asset('assets/images/image2.png'),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(70),
                      child: Container(
                        width: 140,
                        height: 250,
                        color: Colors.brown,
                        child: Image.asset('assets/images/image4.png'),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(70),
                      child: Container(
                        width: 140,
                        height: 140,
                        color: Colors.brown,
                        child: Image.asset('assets/images/image1.png'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text.rich(
            textAlign: TextAlign.center,
            TextSpan(
              children: [
                TextSpan(
                    text: 'The ',
                    style:
                        TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
                TextSpan(
                    text: 'Fashion App',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 112, 79, 56))),
                TextSpan(
                    text: ' That ',
                    style:
                        TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
                TextSpan(
                    text: 'Makes You Look Your Best',
                    style:
                        TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adispiscing elit, sed do eiusmod tempor incididunt',
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(300, 50),
                  backgroundColor: const Color.fromARGB(255, 112, 79, 56)),
              onPressed: () {
                Navigator.pushNamed(context, '/onboardingscreen1');
              },
              child: const Text(
                "Let's Get Started",
                style: TextStyle(color: Colors.white, fontSize: 16),
              )),
          const SizedBox(
            height: 30,
          ),
          const Text.rich(
            textAlign: TextAlign.center,
            TextSpan(
              children: [
                TextSpan(
                    text: 'Already have an account? ',
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
                TextSpan(
                    text: 'Fashion App',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                        color: Color.fromARGB(255, 112, 79, 56))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
