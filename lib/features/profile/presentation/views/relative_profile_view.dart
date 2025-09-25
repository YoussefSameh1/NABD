import 'package:flutter/material.dart';
import 'package:nabd_app/core/widgets/custom_appbar.dart';
import 'package:nabd_app/features/profile/presentation/views/widgets/relative_profile_view_body.dart';

class RelativeProfileView extends StatelessWidget {
  const RelativeProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'My Profile', automaticallyImplyLeading: false),
      body: RelativeProfileViewBody(),
    );
  }
}
