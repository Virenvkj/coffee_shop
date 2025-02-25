import 'package:coffee_shop/presentation/onboarding/onboarding_slide.dart';
import 'package:coffee_shop/presentation/onboarding/onboarding_slide2.dart';
import 'package:flutter/material.dart';

class OnboardingSlide1 extends StatefulWidget {
  const OnboardingSlide1({super.key});

  @override
  State<OnboardingSlide1> createState() => _OnboardingSlide1State();
}

class _OnboardingSlide1State extends State<OnboardingSlide1> {
  @override
  Widget build(BuildContext context) {
    return OnboardingSlide(
      buttonText: 'NEXT',
      descriptionText:
          'Customize your own drink exactly how you like it by adding any topping you like!!!',
      imageUrl: 'assets/images/onboarding/slide1.png',
      index: 0,
      labelText: 'Choose and customize your Drinks',
      onTapButton: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const OnboardingSlide2(),
          ),
        );
      },
    );
  }
}
