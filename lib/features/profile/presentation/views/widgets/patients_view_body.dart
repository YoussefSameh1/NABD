import 'package:flutter/material.dart';
import 'package:nabd_app/core/contants/constants.dart';
import 'package:nabd_app/features/profile/presentation/views/widgets/patients_list.dart';

class PatientsViewBody extends StatelessWidget {
  const PatientsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          
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
