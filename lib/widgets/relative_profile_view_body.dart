import 'package:flutter/material.dart';
import 'package:nabd_app/constants.dart';
import 'package:nabd_app/views/patients_view.dart';
import 'package:nabd_app/widgets/base_profile_view_body.dart';
import 'package:nabd_app/widgets/custom_button.dart';
import 'package:nabd_app/widgets/profile_section.dart';

class RelativeProfileViewBody extends StatelessWidget {
  const RelativeProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BaseProfileViewBody(),
        const SizedBox(height: 40),
        ProfileSection(
          title: 'Remove Patient',
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PatientsView()),
            );
          },
        ),
        const SizedBox(height: 150),
        CustomButton(text: 'Log out', color: kPrimaryColor),
      ],
    );
  }
}
