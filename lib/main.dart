import 'package:flutter/material.dart';
import 'package:nabd_app/features/profile/views/test.dart';

void main() {
  runApp(const NabdApp());
}

class NabdApp extends StatelessWidget {
  const NabdApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Test(),
    );
  }
}