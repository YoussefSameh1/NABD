import 'package:flutter/material.dart';
import 'package:nabd_app/constants.dart';
import 'package:nabd_app/widgets/patients_list.dart';

class PatientsViewBody extends StatelessWidget {
  const PatientsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text(
            'Patients',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 100),
          Expanded(child: PatientsList()),
          const Spacer(flex: 4),
          Row(
            children: [
              const Spacer(flex: 11),
              const Text(
                'add another patient',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff8F8787),
                ),
              ),
              const Spacer(flex: 1),
              CircleAvatar(
                backgroundColor: kPrimaryColor,
                radius: 35,
                child: const Icon(Icons.add, size: 60, color: Colors.white),
              ),
              const Spacer(flex: 2),
            ],
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}
