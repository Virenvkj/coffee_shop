import 'package:flutter/material.dart';

class SendOtpPopupCommonCta extends StatelessWidget {
  const SendOtpPopupCommonCta({
    super.key,
    required this.buttonText,
    this.buttonBackground,
    this.buttonTextColor,
    required this.onTap,
  });

  final String buttonText;
  final Color? buttonBackground;
  final Color? buttonTextColor;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
        decoration: BoxDecoration(
          color: buttonBackground ?? const Color(0XFF5D4037),
          border: Border.all(
            color: const Color(0XFF5D4037),
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 14,
            color: buttonTextColor ?? const Color(0XFFFEFEFE),
          ),
        ),
      ),
    );
  }
}
