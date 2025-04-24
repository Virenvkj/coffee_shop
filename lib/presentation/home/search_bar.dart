import 'package:coffee_shop/constants/app_assets.dart';
import 'package:coffee_shop/presentation/common_widgets/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Expanded(
          child: SearchTextField(),
        ),
        const SizedBox(width: 20),
        SvgPicture.asset(AppAssets.bellIcon),
      ],
    );
  }
}
