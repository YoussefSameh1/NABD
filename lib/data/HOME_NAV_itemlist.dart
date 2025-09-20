import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final List<BottomBarItem> homeNavItems = const [
  BottomBarItem(
    inActiveItem: Icon(Icons.home, color: Colors.white, size: 30),
    activeItem: Icon(Icons.home, color: Colors.white, size: 30),
    itemLabel: 'Home',
  ),
  BottomBarItem(
    inActiveItem: FaIcon(
      FontAwesomeIcons.capsules,
      color: Colors.white,
      size: 30,
    ),
    activeItem: FaIcon(
      FontAwesomeIcons.capsules,
      color: Colors.white,
      size: 30,
    ),
    itemLabel: 'Medicine',
  ),
  BottomBarItem(
    inActiveItem: Icon(Icons.search, color: Colors.white, size: 30),
    activeItem: Icon(Icons.search, color: Colors.white, size: 30),
    itemLabel: 'Search',
  ),
  BottomBarItem(
    inActiveItem: Icon(Icons.person, color: Colors.white, size: 30),
    activeItem: Icon(Icons.person, color: Colors.white, size: 30),
    itemLabel: 'Profile',
  ),
];
