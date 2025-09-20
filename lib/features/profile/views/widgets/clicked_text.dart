import 'package:flutter/material.dart';

class ClickedText extends StatelessWidget {
  const ClickedText({super.key, required this.text, required this.color, this.onTap});

  final String text;
  final Color color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: 11, fontWeight: FontWeight.bold),
      ),
    );
  }
}
