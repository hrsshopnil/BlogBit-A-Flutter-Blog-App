import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool isTextObscured;

  const AuthField({
    super.key,
    required this.hintText,
    required this.controller,
    this.isTextObscured = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: hintText),
      validator: (value) {
        if (value!.isEmpty) {
          return '$hintText is missing';
        }
        return null;
      },
      controller: controller,
      obscureText: isTextObscured,
    );
  }
}
