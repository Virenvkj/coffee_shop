import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final nameController = TextEditingController();
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
                Center(
                  child: Image.asset(
                    'assets/images/register_icon.png',
                    width: screenWidth * 0.584,
                    height: screenHeight * 0.123,
                    alignment: Alignment.center,
                  ),
                ),
                const SizedBox(height: 28),
                const Text(
                  'Name',
                  style: TextStyle(
                    color: Color(0XFF3C3C3C),
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 4),
                TextField(
                  controller: nameController,
                  cursorColor: const Color(0XFF8A8A8A),
                  cursorHeight: 16,
                  cursorErrorColor: Colors.red,
                  style: const TextStyle(
                    color: Color(0XFF3C3C3C),
                    fontSize: 14,
                  ),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0XFF5D4037),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    hintText: 'Input your name',
                    hintStyle: const TextStyle(
                        color: Color(0XFF8A8A8A),
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0XFF8A8A8A),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Mobile No.',
                  style: TextStyle(
                    color: Color(0XFF3C3C3C),
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 4),
                TextField(
                  controller: numberController,
                  cursorColor: const Color(0XFF8A8A8A),
                  cursorHeight: 16,
                  cursorErrorColor: Colors.red,
                  style: const TextStyle(
                    color: Color(0XFF3C3C3C),
                    fontSize: 14,
                  ),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0XFF5D4037),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    hintText: 'Input your number',
                    hintStyle: const TextStyle(
                        color: Color(0XFF8A8A8A),
                        fontSize: 14,
                        fontWeight: FontWeight.normal),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0XFF8A8A8A),
                      ),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
