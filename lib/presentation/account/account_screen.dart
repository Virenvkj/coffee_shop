import 'package:coffee_shop/constants/app_strings.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(AppStrings.welcomeToAccount),
        ),
      ),
    );
  }
}
