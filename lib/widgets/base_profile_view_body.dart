import 'package:flutter/material.dart';
import 'package:nabd_app/views/edit_profile_view.dart';
import 'package:nabd_app/widgets/profile_section.dart';

class BaseProfileViewBody extends StatelessWidget {
  const BaseProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Icon( Icons.account_circle, size: 100, color: Colors.black),
          const SizedBox(height: 30),
          const Text(
            'Hagar Emad',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'hajarghonim19@gmail.com',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 50),
          ProfileSection(
            title: 'Edit Profile',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditProfileView()),
              );
            },
          ),
        ],
      ),
    );
  }
}
