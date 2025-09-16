import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xff8677C8);
const Color kHintColor = Color(0xffB3B3B3);

const kCardDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.all(Radius.circular(20)),
  boxShadow: [
    BoxShadow(
      color: Colors.grey,
      blurRadius: 5,
      offset: Offset(0, 3),
    ),
  ],
);