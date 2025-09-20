import 'package:flutter/material.dart';
import 'package:nabd_app/views/search_medicine_view.dart';
import 'package:nabd_app/views/add_medicine_view.dart';
import 'home_page_content.dart';

final List<Widget> homePages = const [
  HomePageContent(),
  AddMedicinePage(),
  SearchMedicineView(),
  Center(child: Text('Profile Page')),
];
