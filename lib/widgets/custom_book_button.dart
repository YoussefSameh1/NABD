import 'package:flutter/material.dart';

class CustombookButton extends StatelessWidget {
  const CustombookButton({super.key, required this.text, this.onTap});

  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(40),
      color: const Color(0xff8677C8),
      child: InkWell(
        borderRadius: BorderRadius.circular(40),
        onTap: onTap,
        child: Container(
          height: 45,
          width: 120,
          alignment: Alignment.center,
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
