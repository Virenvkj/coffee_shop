import 'package:flutter/material.dart';

class CommonTextField extends StatefulWidget {
  const CommonTextField({
    super.key,
    required this.controller,
    required this.labelName,
    this.hintText,
  });

  final String labelName;
  final TextEditingController controller;
  final String? hintText;

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelName,
          style: const TextStyle(
            color: Color(0XFF3C3C3C),
            fontSize: 12,
          ),
        ),
        const SizedBox(height: 4),
        TextField(
          controller: widget.controller,
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
            hintText: widget.hintText,
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
    );
  }
}
