import 'package:flutter/material.dart';
import 'package:nabd_app/widgets/custom_appbar.dart';
import 'package:nabd_app/widgets/custom_button.dart';
import 'package:nabd_app/widgets/home_body_item_card.dart';

class MyNotifiView extends StatelessWidget {
  const MyNotifiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: 'My Notifications'),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            HomeBodyItemCard(),

            SizedBox(height: 60),
            CustomButton(text: 'Set Reminder'),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
