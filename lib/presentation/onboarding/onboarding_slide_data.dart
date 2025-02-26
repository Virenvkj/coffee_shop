import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:coffee_shop/presentation/common_widgets/skip_button.dart';

class OnboardingSlideData extends StatefulWidget {
  final String imageUrl;
  final String labelText;
  final String descriptionText;
  final String buttonText;
  final int slideLength;
  final int currentIndex;
  final Function onTapButton;

  const OnboardingSlideData({
    super.key,
    required this.imageUrl,
    required this.labelText,
    required this.descriptionText,
    required this.buttonText,
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SkipButton(),
        const SizedBox(height: 52),
        Image.asset(
          widget.imageUrl,
          width: 284,
          height: 261,
        ),
        const SizedBox(height: 63),
        Text(
          widget.labelText,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          widget.descriptionText,
          style: const TextStyle(
            fontSize: 16,
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
              effect: const ExpandingDotsEffect(
                activeDotColor: Color(0XFF5D4037),
                dotColor: Color(0XFFCACACA),
                dotHeight: 12,
                dotWidth: 12,
                expansionFactor: 2,
              ),
            ),
            GestureDetector(
              onTap: () => widget.onTapButton(),
              child: Container(
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
                      widget.buttonText,
                      style: const TextStyle(
                        color: Color(0XFFFEFEFE),
                        fontSize: 14,
                      ),
                    ),
                    const Icon(
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
    );
  }
}
