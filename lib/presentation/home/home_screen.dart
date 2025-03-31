import 'dart:async';
import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:coffee_shop/presentation/common_widgets/home_carousel_item.dart';
import 'package:coffee_shop/presentation/common_widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // int carouselIndex = 0;
  // late CarouselController homeCarouselController;
  // final carouselTimer = Timer.periodic(
  //   const Duration(seconds: 1),
  //   (val) => _incrementCounter.call,
  // );

  // @override
  // void initState() {
  //   super.initState();
  //   homeCarouselController = CarouselController(initialItem: carouselIndex);
  //   homeCarouselController.addListener(_automateCarousel);
  // }

  // _incrementCounter() {
  //   carouselIndex++;
  // }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0XFFFEFEFE),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 8,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Expanded(
                    child: SearchTextField(),
                  ),
                  const SizedBox(width: 20),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_outlined,
                      color: Color(0XFF5D4037),
                      size: 24,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: screenHeight * 0.168,
                width: screenWidth,
                child: CarouselView(
                  scrollDirection: Axis.horizontal,
                  itemSnapping: true,
                  itemExtent: screenWidth,
                  children: const [
                    HomeCarouselItem(
                      imageUrl: 'assets/images/home/carousel/carousel1.png',
                    ),
                    HomeCarouselItem(
                      imageUrl: 'assets/images/home/carousel/carousel2.png',
                    ),
                    HomeCarouselItem(
                      imageUrl: 'assets/images/home/carousel/carousel3.png',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
