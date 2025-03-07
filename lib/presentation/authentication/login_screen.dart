import 'package:coffee_shop/presentation/authentication/registration_screen.dart';
import 'package:coffee_shop/presentation/common_widgets/auth_button.dart';
import 'package:coffee_shop/presentation/common_widgets/auth_screen_footer_text.dart';
import 'package:coffee_shop/presentation/common_widgets/common_text_field.dart';
import 'package:coffee_shop/presentation/common_widgets/shopfee_icon.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0XFFF5F5F5),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.053,
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenHeight * 0.127),
                const ShopFeeIcon(),
                const SizedBox(height: 28),
                CommonTextField(
                  controller: numberController,
                  labelName: 'Mobile No.',
                  hintText: 'Input your number',
                ),
                const SizedBox(height: 16),
                AuthButton(
                  buttonText: 'Login',
                  onTap: () {},
                ),
                const SizedBox(height: 268),
                AuthScreenFooterText(
                  initialText: 'Don’t have an account? ',
                  linkText: 'Register',
                  onTapLink: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegistrationScreen(),
                      ),
                      (val) => false,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
