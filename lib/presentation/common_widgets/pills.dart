import 'package:flutter/material.dart';

class Pills extends StatelessWidget {
  const Pills({
    super.key,
    required this.icon,
    required this.text,
    this.isSelected = false,
  });

  final String text;
  final IconData icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        color: isSelected ? const Color(0XFF5D4037) : const Color(0XFFEFEBE9),
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(right: 8, top: 4, bottom: 4),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Row(
        children: [
          Icon(
            icon,
            size: screenHeight * 0.0197,
            color:
                isSelected ? const Color(0XFFFEFEFE) : const Color(0XFF3C3C3C),
          ),
          const SizedBox(width: 4),
          Text(
            text,
            style: TextStyle(
              fontSize: screenHeight * 0.0148,
              color: isSelected
                  ? const Color(0XFFFEFEFE)
                  : const Color(0XFF3C3C3C),
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
