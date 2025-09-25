import 'package:flutter/material.dart';
import 'package:nabd_app/features/search_medicine/presentaion/search_medicine_view.dart';
import 'package:nabd_app/features/add_medicine/presntaion/add_medicine_view.dart';
import '../../features/home/presntation/views/home_page_content.dart';

final List<Widget> homePages = const [
  HomePageContent(),
  AddMedicinePage(),
  SearchMedicineView(),
  Center(child: Text('Profile Page')),
];
