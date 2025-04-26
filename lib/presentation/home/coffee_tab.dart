import 'package:coffee_shop/model/pills_model.dart';
import 'package:coffee_shop/presentation/common_widgets/pills.dart';
import 'package:coffee_shop/presentation/common_widgets/product_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CoffeeTab extends StatefulWidget {
  const CoffeeTab({super.key});

  @override
  State<CoffeeTab> createState() => _CoffeeTabState();
}

class _CoffeeTabState extends State<CoffeeTab> {
  List<PillsModel> pillsList = [
    PillsModel(icon: Icons.filter, text: 'Filter'),
    PillsModel(icon: Icons.star, text: 'Rating 4.5+'),
    PillsModel(icon: Icons.price_check_rounded, text: 'Price'),
    PillsModel(icon: Icons.discount, text: 'Promo'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
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
          height: 305.h,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return const ProductTile(
                productDescription: 'hi there how ',
              );
            },
          ),
        ),
      ],
    );
  }
}
