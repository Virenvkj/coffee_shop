import 'package:coffee_shop/presentation/home/carousel_home_screen.dart';
import 'package:coffee_shop/presentation/home/coffee_tab_sliver.dart';
import 'package:coffee_shop/presentation/home/search_bar.dart';
import 'package:flutter/material.dart' hide SearchBar;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenSliver extends StatefulWidget {
  const HomeScreenSliver({super.key});

  @override
  State<HomeScreenSliver> createState() => _HomeScreenSliverState();
}

class _HomeScreenSliverState extends State<HomeScreenSliver>
    with TickerProviderStateMixin {
  late TabController tabController;
  final _controller = ScrollController();

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      debugPrint(_controller.offset.toString());
    });
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          controller: _controller,
          physics: const ClampingScrollPhysics(),
          slivers: [
            const SliverAppBar(
              title: SearchBar(),
              pinned: true,
            ),
            const SliverToBoxAdapter(
              child: CarouselHomeScreen(),
            ),
            SliverAppBar(
              title: TabBar(
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
              pinned: true,
            ),
            SliverFillRemaining(
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                controller: tabController,
                children: const [
                  CoffeeTabSliver(),
                  CoffeeTabSliver(),
                  CoffeeTabSliver(),
                ],
              ),
            ),
            // SliverList(
            //   delegate: SliverChildListDelegate(
            //     [
            //       Column(
            //         mainAxisSize: MainAxisSize.min,
            //         children: [
            //           const CarouselHomeScreen(),
            //           SizedBox(
            //             height: 530.h,
            //             child: TabBarView(
            //               physics: const NeverScrollableScrollPhysics(),
            //               controller: tabController,
            //               children: const [
            //                 CoffeeTab(),
            //                 CoffeeTab(),
            //                 CoffeeTab(),
            //               ],
            //             ),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
