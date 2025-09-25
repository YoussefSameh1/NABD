import 'package:flutter/material.dart';
import 'package:nabd_app/core/contants/constants.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    super.key,
    required this.title,
    this.onTap,
    this.color = Colors.black,
  });

  final String title;
  final void Function()? onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: kCardDecoration,
        child: Row(
          children: [
            const Spacer(flex: 1),
            Text(
              title,
              style: TextStyle(
                color: color,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(flex: 6),
            const Icon(Icons.arrow_forward_ios, color: kPrimaryColor, size: 24),
            const Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
