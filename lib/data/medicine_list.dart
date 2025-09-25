import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nabd_app/core/widgets/custom_no.dart';
import 'package:nabd_app/core/widgets/custom_right_check.dart';
import 'package:nabd_app/features/add_medicine/data/medicine_model.dart';

final List<Medicine> medicines = [
  Medicine(
    title: 'Panadol',
    time: '8:05 AM',
    subtitle: '2 capsules',
    icon: FontAwesomeIcons.capsules,
    trailing: const CustomRightCheck(),
  ),
  Medicine(
    title: 'Vitamin C',
    time: '9:00 AM',
    subtitle: '3 capsules',
    icon: FontAwesomeIcons.capsules,
    trailing: const CustomNo(),
  ),
  Medicine(
    title: 'Aspirin',
    time: '3:09 PM',
    subtitle: '5 capsules',
    icon: FontAwesomeIcons.pills,
    trailing: const CustomNo(),
  ),
  Medicine(
    title: 'Zinc',
    time: '1:00 PM',
    subtitle: '1 capsule',
    icon: FontAwesomeIcons.pills,
    trailing: const CustomNo(),
  ),
  Medicine(
    title: 'B 12',
    time: '1:00 PM',
    subtitle: '1 capsule',
    icon: FontAwesomeIcons.pills,
    trailing: const CustomNo(),
  ),
  Medicine(
    title: 'Vitamin C',
    time: '9:00 AM',
    subtitle: '3 capsules',
    icon: FontAwesomeIcons.capsules,
    trailing: const CustomNo(),
  ),
];
