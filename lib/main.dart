import 'package:flutter/material.dart';
import 'package:nabd_app/features/splash_and_onboarding/presentation/views/splash_screen.dart';
import 'package:nabd_app/features/home/presntation/views/home_view.dart';

void main() {
  runApp(const NabdApp());
}

class NabdApp extends StatelessWidget {
  const NabdApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplachScreen());
  }
}
