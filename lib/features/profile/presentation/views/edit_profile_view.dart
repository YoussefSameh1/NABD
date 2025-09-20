import 'package:flutter/material.dart';
import 'package:nabd_app/features/profile/presentation/views/widgets/custom_app_bar.dart';
import 'package:nabd_app/features/profile/presentation/views/widgets/edit_profile_view_body.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Edit Profile'),
      body: EditProfileViewBody(),
    );
  }
}