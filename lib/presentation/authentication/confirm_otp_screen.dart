import 'package:flutter/material.dart';

class ConfirmOtpScreen extends StatelessWidget {
  const ConfirmOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40,
        backgroundColor: const Color(0XFFF5F5F5),
        centerTitle: false,
        leading: IconButton(
          iconSize: 24,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Confirm OTP code',
          style: TextStyle(
            color: Color(0XFF3C3C3C),
            fontSize: 16,
          ),
        ),
      ),
      backgroundColor: const Color(0XFFF5F5F5),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color(0XFF3C3C3C).withOpacity(0.15),
                    blurRadius: 50,
                    spreadRadius: 0,
                    offset: const Offset(0, 50),
                  ),
                ],
              ),
              child: Divider(
                color: const Color(0XFF3C3C3C).withOpacity(0.15),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 24),
                  Text(
                    '081234567891',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'Enter the 5-digit OTP code that has been sent from SMS to complete your account registration',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
