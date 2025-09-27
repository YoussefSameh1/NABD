import 'package:flutter/material.dart';
import 'package:nabd_app/core/widgets/custom_appbar.dart';
import 'package:nabd_app/features/profile/presentation/views/widgets/patients_view_body.dart';

class PatientsView extends StatelessWidget {
  const PatientsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Patients'),
      body: PatientsViewBody(),
    );
  }
}
