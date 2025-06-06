import 'package:coffee_shop/constants/app_assets.dart';
import 'package:coffee_shop/constants/app_strings.dart';
import 'package:coffee_shop/presentation/authentication/registration_screen.dart';
import 'package:flutter/material.dart';

import 'package:coffee_shop/model/onboarding_model.dart';
import 'package:coffee_shop/presentation/onboarding/onboarding_slide_data.dart';

class OnboardingMain extends StatelessWidget {
  OnboardingMain({super.key});

  final onboardingSlideData = const [
    OnboardingModel(
      buttonText: 'NEXT',
      descriptionText:
          'Customize your own drink exactly how you like it by adding any topping you like!!!',
      imageUrl: 'assets/images/onboarding/slide1.png',
      labelText: AppStrings.onboardingSlideOneHeader,
    ),
    OnboardingModel(
      buttonText: 'NEXT',
      descriptionText:
          'You can place your order quickly and easly without wasting time. You can also schedule orders via your smarthphone.',
      imageUrl: AppAssets.onboardingSlideTwo,
      labelText: AppStrings.onboardingSlideTwoHeader,
    ),
    OnboardingModel(
      buttonText: 'Login/Register',
      descriptionText:
          'Exciting prizes await you! Redeem yours by collecting all the points after purchase in the app!',
      imageUrl: 'assets/images/onboarding/slide3.png',
      labelText: 'Get and Redeem Voucher',
    ),
  ];

  final pageController = PageController();

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
          child: PageView.builder(
            controller: pageController,
            itemCount: onboardingSlideData.length,
            itemBuilder: (context, index) {
              return OnboardingSlideData(
                onboardingData: onboardingSlideData[index],
                slideLength: onboardingSlideData.length,
                currentIndex: index,
                onTapButton: () {
                  if (index == (onboardingSlideData.length - 1)) {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegistrationScreen(),
                      ),
                      (val) => false,
                    );
                    return;
                  }
                  pageController.nextPage(
                    duration: const Duration(
                      milliseconds: 100,
                    ),
                    curve: Curves.ease,
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
