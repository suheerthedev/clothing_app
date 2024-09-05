import 'package:clothing_store_app/util/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.labelText,
    required this.hintText,
    required this.obscureText,
    this.suffixIcon,
    this.onSuffixIconPressed,
  });
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final bool obscureText;
  final Widget? suffixIcon;
  final VoidCallback? onSuffixIconPressed;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: AppColors.primaryTextColor),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(25),
        ),
        suffixIcon: suffixIcon != null
            ? IconButton(
                padding: const EdgeInsets.all(0),
                onPressed: onSuffixIconPressed,
                icon: suffixIcon!,
                color: AppColors.primaryIconColor,
                iconSize: 15,
              )
            : null,
      ),
    );
  }
}
