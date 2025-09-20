import 'package:flutter/material.dart';
import 'package:nabd_app/features/profile/presentation/views/relative_profile_view.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RelativeProfileView()),
            );
          },
          child: Text('Test'),
        ),
      ),
    );
  }
}
