import 'package:flutter/material.dart';
import 'package:nabd_app/features/profile/views/widgets/custom_app_bar.dart';
import 'package:nabd_app/features/profile/views/widgets/patient_profile_view_body.dart';

class PatientProfileView extends StatelessWidget {
  const PatientProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'My Profile'),
      body: PatientProfileViewBody(),
    );
  }
}
