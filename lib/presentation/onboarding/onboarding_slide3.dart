import 'package:coffee_shop/presentation/authentication/login_screen.dart';
import 'package:coffee_shop/presentation/onboarding/onboarding_slide.dart';
import 'package:flutter/material.dart';

class OnboardingSlide3 extends StatefulWidget {
  const OnboardingSlide3({super.key});

  @override
  State<OnboardingSlide3> createState() => _OnboardingSlide3State();
}

class _OnboardingSlide3State extends State<OnboardingSlide3> {
  @override
  Widget build(BuildContext context) {
    return OnboardingSlide(
      buttonText: 'Login/Register',
      descriptionText:
          'Exciting prizes await you! Redeem yours by collecting all the points after purchase in the app!',
      imageUrl: 'assets/images/onboarding/slide3.png',
      index: 2,
      labelText: 'Get and Redeem Voucher',
      onTapButton: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginScreen(),
          ),
          (val) => false,
        );
      },
    );
  }
}
