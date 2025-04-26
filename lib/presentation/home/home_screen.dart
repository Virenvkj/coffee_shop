import 'package:coffee_shop/presentation/home/carousel_home_screen.dart';
import 'package:coffee_shop/presentation/home/coffee_tab.dart';
import 'package:coffee_shop/presentation/home/search_bar.dart' as sb;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  double scrollOffset = 0;
  late TabController tabController;

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFEFEFE),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const sb.SearchBar(),
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CarouselHomeScreen(),
                    TabBar(
                      labelPadding: EdgeInsets.zero,
                      labelStyle: TextStyle(
                        fontSize: 16.sp,
                        color: const Color(0XFF5D4037),
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
                    SizedBox(
                      height: 355.h,
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
            ],
          ),
        ),
      ),
    );
  }
}
