import 'package:calculator_app/color/appcolors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.none,
        readOnly: true,
        showCursor: true,
        autofocus: true,
        decoration: InputDecoration(
            fillColor: AppColors.primaryColor,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none)),
        style: const TextStyle(fontSize: 50),
      ),
    );
  }
}
