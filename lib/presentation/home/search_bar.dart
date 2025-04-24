import 'package:coffee_shop/presentation/common_widgets/search_text_field.dart';
import 'package:flutter/material.dart';

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
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_outlined,
            color: Color(0XFF5D4037),
            size: 24,
          ),
        )
      ],
    );
  }
}
