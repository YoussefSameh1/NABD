import 'package:flutter/material.dart';
import 'package:nabd_app/core/contants/constants.dart';
import 'package:nabd_app/core/widgets/custom_button.dart';
import 'package:nabd_app/core/widgets/custom_text_field.dart';

class ChangePasswordViewBody extends StatelessWidget {
  const ChangePasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 80),
          CustomTextField(title: 'Old Password', isobscure: true),
          const SizedBox(height: 20),
          CustomTextField(title: 'New Password', isobscure: true),
          const SizedBox(height: 20),
          CustomTextField(title: 'Confirm Password', isobscure: true),
          const SizedBox(height: 120),
          CustomButton(text: 'Save Changes', color: kPrimaryColor),
        ],
      ),
    );
  }
}
