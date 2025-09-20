import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomConfirmedCard extends StatelessWidget {
  const CustomConfirmedCard({
    super.key,
    required this.condition,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.trailingWidget,
  });
  final String condition;
  final String title;
  final String subtitle;
  final IconData icon;
  final Widget trailingWidget;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: SizedBox(
        height: 80,
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 16,
          ),
          leading: Container(
            width: 50,
            height: 50,
            alignment: Alignment.center,
            child: FaIcon(icon, size: 24, color: const Color(0xff8677C8)),
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(fontSize: 14, color: Colors.grey[600]),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                condition,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.green,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 16),
              trailingWidget,
            ],
          ),
          onTap: () {
            
          },
        ),
      ),
    );
  }
}