import 'package:flutter/material.dart';
import 'package:nabd_app/views/patient_booking.dart';
// import 'package:nabd_app/addPatient/add_patient_page.dart';
// import 'package:nabd_app/relative_notif.dart';
// import 'package:nabd_app/addPatient/patient_booking.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyBooking(),
    );
  }
}