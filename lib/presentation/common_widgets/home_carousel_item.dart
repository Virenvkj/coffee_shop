import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeCarouselItem extends StatelessWidget {
  const HomeCarouselItem({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(imageUrl),
        ),
      ),
    );
  }
}
