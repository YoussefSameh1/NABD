import 'package:flutter/material.dart';
import 'package:nabd_app/core/widgets/custom_appbar.dart';
import 'package:nabd_app/features/profile/presentation/views/widgets/base_profile_view_body.dart';

class PharmacyProfileView extends StatelessWidget {
  const PharmacyProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'My Profile', automaticallyImplyLeading: false),
      body: BaseProfileViewBody(),
    );
  }
}