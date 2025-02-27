import 'package:coffee_shop/presentation/authentication/login_screen.dart';
import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
            );
          },
          child: Text(
            'Skip',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: const Color(0XFF3C3C3C),
              fontSize: screenHeight * 0.0172,
            ),
          ),
        ),
      ],
    );
  }
}
