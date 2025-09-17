import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nabd_app/widgets/custom_addmed_textfield.dart';
import 'package:nabd_app/widgets/custom_button.dart';
import 'package:nabd_app/widgets/custom_appbar.dart';

class AddMedicinePage extends StatelessWidget {
  const AddMedicinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppbar(title: 'Add Medicine'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            const FaIcon(
              FontAwesomeIcons.capsules,
              size: 50,
              color: Color(0xff8677C8),
            ),
            const SizedBox(height: 25),

            const CustomTextField(
              hintText: 'enter medicine name',
              title: 'Medicine Name',
            ),
            const SizedBox(height: 3),

            const CustomTextField(
              hintText: 'enter time',
              title: 'When to take',
            ),
            const SizedBox(height: 3),

            const CustomTextField(hintText: 'enter amount', title: 'Amount'),

            const SizedBox(height: 40),

            CustomButton(text: 'Set Reminder', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
