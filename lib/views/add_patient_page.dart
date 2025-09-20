import 'package:flutter/material.dart';
import 'package:nabd_app/views/widgets/add_bottom.dart';

class AddPatientPage extends StatelessWidget {
  const AddPatientPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff8677C8),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xff8677C8)),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Row(
          children: [
            Icon(Icons.person_outlined, color: Colors.white),
            SizedBox(width: 8),
            Text(
              'hello, ahmed',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 330,
              width: double.infinity,
              child: Image.asset(
                'assets/fam.png',
                fit: BoxFit.fitHeight,
              ),
            ),
            const SizedBox(height: 7),
            const Text(
              'Add Patient',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff8F8787),
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 7),
            const AddBottom(),
            const SizedBox(height: 15),
            const Text(
              'Add a family member to track \n their medication reminders.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff8F8787),
              ),
            ),
            const Text(
              'Connect with a relative to get \n notified about their medicine schedule.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff8F8787),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
