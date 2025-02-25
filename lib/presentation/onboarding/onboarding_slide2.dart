import 'package:coffee_shop/presentation/onboarding/onboarding_slide.dart';
import 'package:coffee_shop/presentation/onboarding/onboarding_slide3.dart';
import 'package:flutter/material.dart';

class OnboardingSlide2 extends StatefulWidget {
  const OnboardingSlide2({super.key});

  @override
  State<OnboardingSlide2> createState() => _OnboardingSlide2State();
}

class _OnboardingSlide2State extends State<OnboardingSlide2> {
  @override
  Widget build(BuildContext context) {
    return OnboardingSlide(
      buttonText: 'NEXT',
      descriptionText:
          'You can place your order quickly and easly without wasting time. You can also schedule orders via your smarthphone.',
      imageUrl: 'assets/images/onboarding/slide2.png',
      index: 1,
      labelText: 'Quickly and easly',
      onTapButton: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const OnboardingSlide3(),
          ),
        );
      },
    );
  }
}
