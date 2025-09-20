import 'package:flutter/material.dart';
import 'package:nabd_app/features/profile/presentation/views/widgets/change_password_view_body.dart';
import 'package:nabd_app/features/profile/presentation/views/widgets/custom_app_bar.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Change Password'),
      body: ChangePasswordViewBody(),
    );
  }
}