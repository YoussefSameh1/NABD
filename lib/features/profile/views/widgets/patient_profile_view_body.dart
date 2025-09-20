import 'package:flutter/material.dart';
import 'package:nabd_app/constants.dart';
import 'package:nabd_app/features/profile/views/widgets/base_profile_view_body.dart';
import 'package:nabd_app/features/profile/views/widgets/custom_button.dart';
import 'package:nabd_app/features/profile/views/widgets/profile_section.dart';

class PatientProfileViewBody extends StatelessWidget {
  const PatientProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        BaseProfileViewBody(),
        SizedBox(height: 40),
        ProfileSection(title: 'My Bookings'),
        SizedBox(height: 150),
        CustomButton(text: 'Log out', color: kPrimaryColor),
      ],
    );
  }
}
