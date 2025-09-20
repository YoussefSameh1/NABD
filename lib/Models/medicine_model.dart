import 'package:flutter/material.dart';

class Medicine {
  final String title;
  final String time;
  final String subtitle;
  final IconData icon;
  final Widget trailing;

  Medicine({
    required this.title,
    required this.time,
    required this.subtitle,
    required this.icon,
    required this.trailing,
  });
}
