import 'package:flutter/material.dart';
import '../utils/constants.dart'; // تأكد إن الملف موجود وفيه borderRadius لو بتستخدمه

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData? icon;
  final bool obscureText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final TextStyle? hintStyle;

  const CustomTextField({
    required this.hintText,
    this.icon,
    this.obscureText = false,
    required this.controller,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.hintStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: hintStyle ?? const TextStyle(color: Color(0xFF9575CD)),
          prefixIcon: icon != null ? Icon(icon, color: Colors.grey) : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.white),
          ),
          errorBorder: OutlineInputBorder( // حدود عند الخطأ
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xfff3952b)),
          ),
          focusedErrorBorder: OutlineInputBorder( // حدود عند التركيز مع خطأ
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xfff3952b)),
          ),
          errorStyle: const TextStyle(color: Color(0xfff3952b)), // لون التنبيهات
        ),
        validator: validator,
      ),
    );
  }
}