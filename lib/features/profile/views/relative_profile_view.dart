import 'package:flutter/material.dart';
import 'package:nabd_app/features/profile/views/widgets/custom_app_bar.dart';
import 'package:nabd_app/features/profile/views/widgets/relative_profile_view_body.dart';

class RelativeProfileView extends StatelessWidget {
  const RelativeProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'My Profile'),
      body: RelativeProfileViewBody(),
    );
  }
}
