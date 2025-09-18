import 'package:flutter/material.dart';
//import 'package:nabd_app/on_bording_four.dart';
//import 'package:nabd_app/on_bording_three.dart';
//import 'package:nabd_app/on_bording_two.dart';
import 'package:nabd_app/splash_screen.dart';
//import 'package:nabd_app/splash_screen_two.dart';

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
