import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingSlide extends StatefulWidget {
  const OnboardingSlide({super.key});

  @override
  State<OnboardingSlide> createState() => _OnboardingSlideState();
}

class _OnboardingSlideState extends State<OnboardingSlide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF5F5F5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Skip',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Color(0XFF3C3C3C),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 52),
              Image.asset(
                'assets/images/onboarding/slide1.png',
                width: 284,
                height: 261,
              ),
              const SizedBox(height: 63),
              const Text(
                'Choose and customize your Drinks',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Customize your own drink exactly how you like it by adding any topping you like!!!',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 74),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AnimatedSmoothIndicator(
                    activeIndex: 1,
                    count: 3,
                    effect: ExpandingDotsEffect(
                      activeDotColor: Color(0XFF5D4037),
                      dotColor: Color(0XFFCACACA),
                      dotHeight: 12,
                      dotWidth: 12,
                      expansionFactor: 2,
                    ),
                  ),
                  Container(
                    width: 160,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 16,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0XFF5D4037),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        Text(
                          'NEXT',
                          style: TextStyle(
                            color: Color(0XFFFEFEFE),
                            fontSize: 14,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Color(0XFFFEFEFE),
                          size: 16,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
