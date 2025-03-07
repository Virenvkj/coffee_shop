import 'package:coffee_shop/model/onboarding_model.dart';
import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:coffee_shop/presentation/common_widgets/skip_button.dart';

class OnboardingSlideData extends StatefulWidget {
  final OnboardingModel onboardingData;
  final int slideLength;
  final int currentIndex;
  final Function onTapButton;

  const OnboardingSlideData({
    super.key,
    required this.onboardingData,
    required this.slideLength,
    required this.currentIndex,
    required this.onTapButton,
  });

  @override
  State<OnboardingSlideData> createState() => _OnboardingSlideDataState();
}

class _OnboardingSlideDataState extends State<OnboardingSlideData> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SkipButton(),
        SizedBox(height: screenHeight * 0.064),
        Image.asset(
          widget.onboardingData.imageUrl,
          width: screenWidth * 0.757,
          height: screenHeight * 0.321,
        ),
        SizedBox(height: screenHeight * 0.077),
        Text(
          widget.onboardingData.labelText,
          style: TextStyle(
            fontSize: screenHeight * 0.0246,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: screenHeight * 0.0197),
        Text(
          widget.onboardingData.descriptionText,
          style: TextStyle(
            fontSize: screenHeight * 0.0197,
          ),
        ),
        const Flexible(
          child: SizedBox.expand(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AnimatedSmoothIndicator(
              activeIndex: widget.currentIndex,
              count: widget.slideLength,
              effect: ExpandingDotsEffect(
                activeDotColor: const Color(0XFF5D4037),
                dotColor: const Color(0XFFCACACA),
                dotHeight: screenHeight * 0.01477,
                dotWidth: screenHeight * 0.01477,
                expansionFactor: 2,
              ),
            ),
            GestureDetector(
              onTap: () => widget.onTapButton(),
              child: Container(
                width: screenWidth * 0.416,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  color: const Color(0XFF5D4037),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    Text(
                      widget.onboardingData.buttonText,
                      style: TextStyle(
                        color: const Color(0XFFFEFEFE),
                        fontSize: screenHeight * 0.0172,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: const Color(0XFFFEFEFE),
                      size: screenHeight * 0.0197,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
