import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            height: 66,
            width: 66,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage('assets/images/home/products/item1.png')),
              shape: BoxShape.circle,
              color: Color(0XFF56483C0D).withOpacity(0.05),
            ),
          )
        ],
      ),
    );
  }
}
