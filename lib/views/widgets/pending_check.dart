import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomPendingCheck extends StatelessWidget {
  const CustomPendingCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90),
        color: Color(0xff5AD2E2),
      ),
      child: Center(
        child: FaIcon(FontAwesomeIcons.ellipsis, size: 16, color: Colors.white),
      ),
    );
  }
}