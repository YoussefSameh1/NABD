import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nabd_app/widgets/custom_medicine_card.dart';
import 'package:nabd_app/widgets/custom_no.dart';
import 'package:nabd_app/widgets/custom_right_check.dart';

class HomeBodyItemCard extends StatelessWidget {
  const HomeBodyItemCard({super.key});

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
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16),
        children: const [
          CustomMedicineCard(
            trailingWidget: CustomRightCheck(),
            title: 'Panadol',
            time: '8:05 AM',
            subtitle: '2 capsules',
            icon: FontAwesomeIcons.capsules,
          ),
          CustomMedicineCard(
            trailingWidget: CustomNo(),
            time: '9:00 AM',
            title: 'Vitamin C',
            subtitle: '3 capsules',
            icon: FontAwesomeIcons.capsules,
          ),
          CustomMedicineCard(
            trailingWidget: CustomNo(),
            time: '3:09 PM',
            title: 'Aspirin',
            subtitle: '5 capsules',
            icon: FontAwesomeIcons.pills,
          ),
          CustomMedicineCard(
            trailingWidget: CustomNo(),
            time: '1:00 PM',
            title: 'Zinc',
            subtitle: '1 capsule',
            icon: FontAwesomeIcons.pills,
          ),
        ],
      ),
    );
  }
}
