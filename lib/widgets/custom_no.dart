import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNo extends StatelessWidget {
  const CustomNo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90),
        color: Color(0xffFF808C),
      ),
      child: Center(
        child: FaIcon(FontAwesomeIcons.xmark, size: 16, color: Colors.white),
      ),
    );
  }
}
