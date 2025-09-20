import 'package:flutter/material.dart';
import 'package:nabd_app/features/profile/views/widgets/profile_section.dart';
import 'package:nabd_app/features/profile/views/widgets/remove_dialog.dart';

class PatientsList extends StatelessWidget {
  const PatientsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return ProfileSection(
          title: 'Hagar Emad',
          onTap: () {
            showRemoveDialog(context);
          },
          color: const Color(0xff8F8787),
        );
      },
    );
  }
}
