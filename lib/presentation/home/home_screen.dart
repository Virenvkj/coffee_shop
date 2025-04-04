import 'dart:async';

import 'package:coffee_shop/presentation/common_widgets/home_carousel_item.dart';
import 'package:coffee_shop/presentation/common_widgets/pills.dart';
import 'package:coffee_shop/presentation/common_widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  int carouselIndex = 0;
  double scrollOffset = 0;
  late CarouselController homeCarouselController;
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    homeCarouselController = CarouselController(initialItem: carouselIndex);
    _incrementCounter();
  }

  _incrementCounter() {
    Timer.periodic(const Duration(seconds: 3), (val) {
      if (carouselIndex < 2) {
        scrollOffset = scrollOffset + 400;
        homeCarouselController.jumpTo(scrollOffset);

        carouselIndex++;
      } else if (carouselIndex == 2) {
        carouselIndex = 0;
        scrollOffset = 0;
        homeCarouselController.jumpTo(scrollOffset);
      }
      setState(() {});
    });
  }

  List<String> carouselImages = [
    'assets/images/home/carousel/carousel1.png',
    'assets/images/home/carousel/carousel2.png',
    'assets/images/home/carousel/carousel3.png',
  ];

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
                  controller: homeCarouselController,
                  scrollDirection: Axis.horizontal,
                  itemSnapping: true,
                  itemExtent: screenWidth,
                  children: carouselImages
                      .map(
                        (image) => HomeCarouselItem(imageUrl: image),
                      )
                      .toList(),
                ),
              ),
              const SizedBox(height: 16),
              TabBar(
                labelStyle: const TextStyle(
                  fontSize: 16,
                  color: Color(0XFF5D4037),
                  fontWeight: FontWeight.w500,
                ),
                indicatorColor: const Color(0XFF5D4037),
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: const Color(0XFFEFEBE9),
                controller: tabController,
                unselectedLabelColor: const Color(0XFF868686),
                tabs: const [
                  Tab(text: 'Coffee'),
                  Tab(text: 'Non Coffee'),
                  Tab(text: 'Pastry'),
                ],
              ),
              Flexible(
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: tabController,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 8),
                        SizedBox(
                          height: screenHeight * 0.0517,
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: const [
                              Pills(
                                icon: Icons.filter,
                                text: 'Filter',
                              ),
                              Pills(
                                icon: Icons.star,
                                text: 'Rating 4.5+',
                              ),
                              Pills(
                                icon: Icons.price_check_rounded,
                                text: 'Price',
                              ),
                              Pills(
                                icon: Icons.discount,
                                text: 'Promo',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Text('Hello from tab 2'),
                    const Text('Hello from tab 3'),
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
