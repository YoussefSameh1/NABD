import 'package:flutter/material.dart';
import 'package:nabd_app/features/profile/presentation/views/patient_profile_view.dart';
import 'package:nabd_app/features/profile/presentation/views/pharmacy_profile_view.dart';
import 'package:nabd_app/features/profile/presentation/views/relative_profile_view.dart';
import 'package:nabd_app/features/search_medicine/presentaion/views/search_medicine_view.dart';
import 'package:nabd_app/features/add_medicine/presntaion/views/add_medicine_view.dart';
import '../../features/home/presntation/views/home_page_content.dart';

final List<Widget> homePages = const [
  HomePageContent(),
  AddMedicinePage(),
  SearchMedicineView(),
  RelativeProfileView(),
];
