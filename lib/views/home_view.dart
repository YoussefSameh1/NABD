import 'package:flutter/material.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nabd_app/views/search_medicine_view.dart';
import 'home_page_content.dart';
import 'add_medicine_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late NotchBottomBarController _bottomBarController;
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePageContent(),
    const AddMedicinePage(),
    const SearchMedicineView(),
    const Center(child: Text('Profile Page')),
  ];

  @override
  void initState() {
    super.initState();
    _bottomBarController = NotchBottomBarController();
  }

  @override
  void dispose() {
    _bottomBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Changed from transparent to white
      body: _pages[_currentIndex],
      bottomNavigationBar: AnimatedNotchBottomBar(
        notchBottomBarController: _bottomBarController,
        color: const Color(0xff5AD2E2),
        notchColor: const Color(0xff8677C8),
        showLabel: false,
        kIconSize: 30, // Increased icon size from 24 to 30
        kBottomRadius: 28,
        bottomBarItems: [
          BottomBarItem(
            inActiveItem: const Icon(Icons.home, color: Colors.white, size: 30),
            activeItem: const Icon(Icons.home, color: Colors.white, size: 30),
            itemLabel: 'Home',
          ),
          BottomBarItem(
            inActiveItem: const FaIcon(
              FontAwesomeIcons.capsules,
              color: Colors.white,
              size: 30,
            ),
            activeItem: const FaIcon(
              FontAwesomeIcons.capsules,
              color: Colors.white,
              size: 30,
            ),
            itemLabel: 'Medicine',
          ),
          BottomBarItem(
            inActiveItem: const Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
            activeItem: const Icon(Icons.search, color: Colors.white, size: 30),
            itemLabel: 'Search',
          ),
          BottomBarItem(
            inActiveItem: const Icon(
              Icons.person,
              color: Colors.white,
              size: 30,
            ),
            activeItem: const Icon(Icons.person, color: Colors.white, size: 30),
            itemLabel: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
