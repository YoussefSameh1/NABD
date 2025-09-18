import 'package:flutter/material.dart';

class SplachScreen extends StatelessWidget {
  const SplachScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8677C8),
      body: Center(
        child: Image(
          image: AssetImage('assests/images/logo.png'),
          height: 322,
          width: 322,
        ),
      ),
    );
  }
}
