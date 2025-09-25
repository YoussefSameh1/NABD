import 'package:flutter/material.dart';
import 'package:nabd_app/core/contants/constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title, this.automaticallyImplyLeading = true});

  final String title;
  final bool automaticallyImplyLeading;

  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: AppBar(
        centerTitle: true,
        title: Text(
          title,
          style: const TextStyle(
            color: kPrimaryColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(color: kPrimaryColor),
        automaticallyImplyLeading: automaticallyImplyLeading,
      ),
    );
  }
}
