import 'package:connect/home.dart';
import 'package:connect/intro_pages/page1.dart';
import 'package:connect/intro_pages/page2.dart';
import 'package:connect/intro_pages/page3.dart';
import 'package:connect/login.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPages extends StatefulWidget {
  const OnboardingPages({super.key});

  @override
  State<OnboardingPages> createState() => _OnboardingPagesState();
}

class _OnboardingPagesState extends State<OnboardingPages> {
  final PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              IntroPage1(),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          AnimatedContainer(
              duration: const Duration(milliseconds: 150),
              alignment: const Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return HomePage();
                          },
                        ));
                      },
                      child: const Text('Try Demo')),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: const ScrollingDotsEffect(
                      dotColor: Colors.grey,
                      fixedCenter: true,
                      activeDotColor: Colors.black,
                    ),
                  ),
                  onLastPage
                      ? TextButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return LoginPage();
                              },
                            ));
                          },
                          child: const Text('Get Started'))
                      : TextButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                          ),
                          onPressed: () {
                            _controller.nextPage(
                              duration: const Duration(milliseconds: 150),
                              curve: Curves.easeIn,
                            );
                          },
                          child: const Text('Next')),
                ],
              )),
        ],
      ),
    );
  }
}
