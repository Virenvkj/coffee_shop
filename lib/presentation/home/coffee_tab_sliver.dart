import 'package:coffee_shop/model/pills_model.dart';
import 'package:coffee_shop/presentation/common_widgets/pills.dart';
import 'package:coffee_shop/presentation/common_widgets/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoffeeTabSliver extends StatefulWidget {
  const CoffeeTabSliver({super.key, this.controller});

  final ScrollController? controller;

  @override
  State<CoffeeTabSliver> createState() => _CoffeeTabSliverState();
}

class _CoffeeTabSliverState extends State<CoffeeTabSliver> {
  List<PillsModel> pillsList = [
    PillsModel(icon: Icons.filter, text: 'Filter'),
    PillsModel(icon: Icons.star, text: 'Rating 4.5+'),
    PillsModel(icon: Icons.price_check_rounded, text: 'Price'),
    PillsModel(icon: Icons.discount, text: 'Promo'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: widget.controller,
      physics: const ClampingScrollPhysics(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 8.h),
          SizedBox(
            height: 34.h,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              itemCount: pillsList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Pills(
                onTap: () {
                  pillsList[index].isSelected = !pillsList[index].isSelected;
                  setState(() {});
                },
                pillData: pillsList[index],
              ),
            ),
          ),
          SizedBox(height: 6.h),
          SizedBox(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 100,
              itemBuilder: (context, index) {
                return const ProductTile(
                  productDescription: 'hi there how ',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
