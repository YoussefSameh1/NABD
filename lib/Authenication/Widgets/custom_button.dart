import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final ImageIcon? googleIcon;

  const CustomElevatedButton({
    required this.text,
    required this.onPressed,
    this.googleIcon,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;


    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10), // نفس padding أفقي الـ TextField
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xfff7972e),
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 10), // padding داخلي للارتفاع والعرض
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16), // نفس radius الـ TextField
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (googleIcon != null) ...[
              googleIcon!, // عرض الأيقونة
              const SizedBox(width: 9), // مسافة بين الأيقونة والنص
            ],
            Text(
              text,
              style: const TextStyle(
                color: Color(0xfffdfdfd),
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}