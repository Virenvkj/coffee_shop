import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpTextField extends StatelessWidget {
  const OtpTextField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      animationType: AnimationType.fade,
      textInputAction: TextInputAction.done,
      pinTheme: PinTheme(
        fieldOuterPadding: const EdgeInsets.symmetric(horizontal: 4),
        inActiveBoxShadow: [
          const BoxShadow(
            blurStyle: BlurStyle.outer,
            blurRadius: 4,
            offset: Offset.zero,
            spreadRadius: 0,
            color: Color(0XFF945927),
          ),
        ],
        activeBoxShadow: [
          const BoxShadow(
            blurStyle: BlurStyle.outer,
            blurRadius: 4,
            offset: Offset.zero,
            spreadRadius: 0,
            color: Color(0XFF945927),
          ),
        ],
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(8),
        fieldHeight: 70,
        fieldWidth: 60,
        activeFillColor: Colors.transparent,
        inactiveFillColor: Colors.grey.shade300,
        inactiveColor: Colors.transparent,
        activeColor: const Color(0XFF945927),
        selectedFillColor: Colors.transparent,
        selectedColor: const Color(0XFF945927),
      ),
      mainAxisAlignment: MainAxisAlignment.center,
      autoFocus: false,
      enableActiveFill: true,
      autoDismissKeyboard: true,
      textStyle: const TextStyle(
        fontSize: 40,
        color: Color(0XFF555555),
      ),
      cursorWidth: 3,
      cursorHeight: 36,
      cursorColor: const Color(0XFF3C3C3C),
      keyboardType: TextInputType.number,
      controller: controller,
      appContext: context,
      length: 5,
    );
  }
}
