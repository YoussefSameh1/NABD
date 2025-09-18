import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nabd_app/addPatient/checks/no_check.dart';
import 'package:nabd_app/addPatient/checks/right_check.dart';
import 'package:nabd_app/medicine_card.dart';
import 'package:nabd_app_app/medicine_card.dart';
import 'package:nabd_app_app/addPatient/checks/no_check.dart';
import 'package:nabd_app_app/addPatient/checks/right_check.dart';
import 'package:nabd_app_app_app/addPatient/checks/no_check.dart';
import 'package:nabd_app_app_app/addPatient/checks/right_check.dart';
import 'package:nabd_app_app_app/medicine_card.dart';

class RelativeNotification extends StatelessWidget {
  const RelativeNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(16),
        children: [
          CustomMedicineCard(
            trailingWidget: CustomRightCheck(),
            title: 'Panadol',
            time: '8:05 AM',
            subtitle: '2 capsules',
            icon: FontAwesomeIcons.capsules,
          ),
          CustomMedicineCard(
            trailingWidget: CustomRightCheck(),
            title: 'Asprin',
            time: '9:00 AM',
            subtitle: '2 capsules',
            icon: FontAwesomeIcons.capsules,
          ),
          CustomMedicineCard(
            trailingWidget: CustomNoCheck(),
            title: 'Hibiotic',
            time: '10:00 AM',
            subtitle: '1 capsules',
            icon: FontAwesomeIcons.capsules,
          ),
          CustomMedicineCard(
            trailingWidget: CustomNoCheck(),
            title: 'Comtrex',
            time: '12:00 PM',
            subtitle: '1 capsules',
            icon: FontAwesomeIcons.capsules,
          ),
        ],
      ),
    );
  }
}