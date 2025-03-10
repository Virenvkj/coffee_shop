import 'package:coffee_shop/presentation/authentication/otp_loading_screen.dart';
import 'package:flutter/material.dart';

class SendOtpCodePopup extends StatelessWidget {
  const SendOtpCodePopup({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: const Color(0XFFF5F5F5),
      insetPadding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.125,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 17,
          horizontal: 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/register_otp_popup.png',
              height: 168,
              width: 161,
            ),
            const SizedBox(height: 24),
            const Text(
              'Send OTP code',
              style: TextStyle(
                color: Color(0XFF000000),
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 8),
            const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text:
                        'We will send the OTP code via SMS. Make sure the number ',
                    style: TextStyle(
                      color: Color(0XFF555555),
                      fontSize: 12,
                    ),
                  ),
                  TextSpan(
                    text: '081234567891',
                    style: TextStyle(
                      color: Color(0XFF3C3C3C),
                      fontSize: 12,
                    ),
                  ),
                  TextSpan(
                    text: ' is active',
                    style: TextStyle(
                      color: Color(0XFF555555),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                    decoration: BoxDecoration(
                      color: const Color(0XFFFEFEFE),
                      border: Border.all(
                        color: const Color(0XFF5D4037),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Text(
                      'Cancel',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0XFF3C3C3C),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OtpLoadingScreen(),
                      ),
                    );
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                    decoration: BoxDecoration(
                      color: const Color(0XFF5D4037),
                      border: Border.all(
                        color: const Color(0XFF5D4037),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0XFFFEFEFE),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
