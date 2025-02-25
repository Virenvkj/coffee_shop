import 'package:coffee_shop/presentation/common_widgets/skip_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingSlide extends StatelessWidget {
  final String imageUrl;
  final String labelText;
  final String descriptionText;
  final int index;
  final String buttonText;
  final Function onTapButton;

  const OnboardingSlide({
    super.key,
    required this.imageUrl,
    required this.labelText,
    required this.descriptionText,
    required this.index,
    required this.buttonText,
    required this.onTapButton,
  });

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
                imageUrl,
                width: 284,
                height: 261,
              ),
              const SizedBox(height: 63),
              Text(
                labelText,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                descriptionText,
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
                    activeIndex: index,
                    count: 3,
                    effect: const ExpandingDotsEffect(
                      activeDotColor: Color(0XFF5D4037),
                      dotColor: Color(0XFFCACACA),
                      dotHeight: 12,
                      dotWidth: 12,
                      expansionFactor: 2,
                    ),
                  ),
                  GestureDetector(
                    // onTap: () {
                    //   onTapButton();
                    // },
                    // onTap: onTapButton.call(),
                    onTap: () => onTapButton(),
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
                            buttonText,
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
          ),
        ),
      ),
    );
  }
}
