import 'package:coffee_shop/presentation/authentication/otp_textfield.dart';
import 'package:coffee_shop/presentation/common_widgets/auth_button.dart';
import 'package:coffee_shop/presentation/common_widgets/auth_screen_footer_text.dart';
import 'package:flutter/material.dart';

class ConfirmOtpScreen extends StatefulWidget {
  const ConfirmOtpScreen({super.key});

  @override
  State<ConfirmOtpScreen> createState() => _ConfirmOtpScreenState();
}

class _ConfirmOtpScreenState extends State<ConfirmOtpScreen> {
  final otpController = TextEditingController();

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 24),
                  const Text(
                    '081234567891',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                  const Text(
                    'Enter the 5-digit OTP code that has been sent from SMS to complete your account registration',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  OtpTextField(controller: otpController),
                  // PinCodeTextField(
                  //   controller: pinController,
                  //   appContext: context,
                  //   length: 6,
                  //   obscureText: true,
                  //   showCursor: false,
                  //   enableActiveFill: true,
                  //   pinTheme: PinTheme(
                  //     fieldOuterPadding: const EdgeInsets.only(right: 24),
                  //     activeColor: const Color(0XFF3C3C3C),
                  //     inactiveColor: const Color(0XFF3C3C3C),
                  //     selectedColor: const Color(0XFF3C3C3C),
                  //     activeFillColor: const Color(0XFF3C3C3C),
                  //     inactiveFillColor: const Color(0XFFFEFEFE),
                  //     selectedFillColor: const Color(0XFF3C3C3C),
                  //     borderWidth: 1,
                  //     disabledColor: const Color(0XFF3C3C3C),
                  //     fieldHeight: 30,
                  //     fieldWidth: 30,
                  //     borderRadius: const BorderRadius.all(Radius.zero),
                  //     shape: PinCodeFieldShape.circle,
                  //   ),
                  // ),
                  const SizedBox(height: 32),
                  AuthScreenFooterText(
                    initialText: "Haven't got the confirmation code yet? ",
                    linkText: "Resend",
                    onTapLink: () {},
                    linkTextColor: Colors.blue,
                  ),
                  const SizedBox(height: 102),
                  AuthButton(
                    buttonText: 'Confirm',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
