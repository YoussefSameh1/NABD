import 'package:flutter/material.dart';
import 'package:nabd_app/views/add_medicine_view.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.large(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      backgroundColor: const Color(0xff8677C8),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AddMedicinePage()),
        );
      },
      child: const Icon(color: Colors.white, Icons.add, size: 35),
    );
  }
}
