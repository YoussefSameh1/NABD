import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.inputType,
    this.onChanged,
    this.title,
    this.icon,
    required this.hintText,
    this.obscureText = false,
  });

  final TextInputType? inputType;
  final String hintText;
  final String? title;
  final Function(String)? onChanged;
  final bool obscureText;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null)
            Padding(
              padding: const EdgeInsets.only(left: 4, bottom: 8),
              child: Text(
                title!,
                style: const TextStyle(
                  color: Color(0xFF444444),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

          TextField(
            keyboardType: inputType,
            obscureText: obscureText,
            style: const TextStyle(color: Colors.black),
            onChanged: onChanged,
            decoration: InputDecoration(
              prefixIcon:
                  icon != null
                      ? Icon(icon, color: const Color(0xff8677C8))
                      : null,
              prefixIconConstraints: const BoxConstraints(
                minWidth: 50,
                minHeight: 50,
              ),
              hintText: hintText,
              hintStyle: const TextStyle(
                color: Color(0xffB7B7B7),
                fontSize: 14,
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 14,
              ),
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xffD4CEEB)),
                borderRadius: BorderRadius.circular(24),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xffB4AACC),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
