import 'package:coffee_shop/presentation/authentication/login_screen.dart';
import 'package:coffee_shop/presentation/common_widgets/skip_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingSlide3 extends StatefulWidget {
  const OnboardingSlide3({super.key});

  @override
  State<OnboardingSlide3> createState() => _OnboardingSlide3State();
}

class _OnboardingSlide3State extends State<OnboardingSlide3> {
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
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SkipButton(),
              const SizedBox(height: 52),
              Image.asset(
                'assets/images/onboarding/slide3.png',
                width: 284,
                height: 261,
              ),
              const SizedBox(height: 63),
              const Text(
                'Get and Redeem Voucher',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Exciting prizes await you! Redeem yours by collecting all the points after purchase in the app!',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const Flexible(
                child: SizedBox.expand(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AnimatedSmoothIndicator(
                    activeIndex: 2,
                    count: 3,
                    effect: ExpandingDotsEffect(
                      activeDotColor: Color(0XFF5D4037),
                      dotColor: Color(0XFFCACACA),
                      dotHeight: 12,
                      dotWidth: 12,
                      expansionFactor: 2,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                        (val) => false,
                      );
                    },
                    child: Container(
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
                          Text(
                            'Login/Register',
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
