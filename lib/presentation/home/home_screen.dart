import 'dart:async';

import 'package:coffee_shop/presentation/home/carousel_home_screen.dart';
import 'package:coffee_shop/presentation/home/coffee_tab.dart';
import 'package:coffee_shop/presentation/home/search_bar.dart' as sb;
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
  late Timer timer;

  @override
  void dispose() {
    homeCarouselController.dispose();
    tabController.dispose();
    timer.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    homeCarouselController = CarouselController(initialItem: carouselIndex);
    _incrementCounter();
  }

  _incrementCounter() {
    timer = Timer.periodic(const Duration(seconds: 3), (val) {
      if (!mounted) return;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFEFEFE),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 8,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const sb.SearchBar(),
              const SizedBox(height: 16),
              const CarouselHomeScreen(),
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
                  children: const [
                    CoffeeTab(),
                    CoffeeTab(),
                    CoffeeTab(),
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
