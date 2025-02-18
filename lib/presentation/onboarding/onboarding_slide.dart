import 'package:flutter/material.dart';

class OnboardingSlide extends StatelessWidget {
  const OnboardingSlide({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.center,
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
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
