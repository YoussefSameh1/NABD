import 'package:flutter/material.dart';
import 'package:nabd_app/widgets/base_profile_view_body.dart';
import 'package:nabd_app/widgets/custom_app_bar.dart';

class PharmacyProfileView extends StatelessWidget {
  const PharmacyProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'My Profile'),
      body: BaseProfileViewBody(),
    );
  }
}