import 'package:flutter/material.dart';

class OtpLoadingScreen extends StatelessWidget {
  const OtpLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFEFEFE),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/coffee_loading.gif',
              scale: 0.5,
            ),
            const SizedBox(height: 16),
            const Text(
              'Please wait a minute,',
              style: TextStyle(
                color: Color(0XFF000000),
                fontSize: 14,
              ),
            ),
            const Text(
              'we will send you the OTP code.',
              style: TextStyle(
                color: Color(0XFF3C3C3C),
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}
