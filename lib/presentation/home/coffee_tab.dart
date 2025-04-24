import 'package:coffee_shop/model/pills_model.dart';
import 'package:coffee_shop/presentation/common_widgets/pills.dart';
import 'package:coffee_shop/presentation/common_widgets/product_tile.dart';
import 'package:flutter/material.dart';

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
    final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 8),
        SizedBox(
          height: screenHeight * 0.0527,
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
        const SizedBox(height: 6),
        SizedBox(
          height: screenHeight * 0.455,
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
