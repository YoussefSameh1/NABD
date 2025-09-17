import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:nabd_app/views/add_medicine_view.dart';
import 'package:nabd_app/views/home_page_content.dart';
import 'package:nabd_app/views/paitent_profile_view.dart';
import 'package:nabd_app/views/search_medicine_view.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  final PageController _pageController = PageController();
  final NotchBottomBarController _notchController = NotchBottomBarController();
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomePageContent(),
    AddMedicinePage(),
    SearchMedicineView(),
    PaitentProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: _pages,
      ),
      bottomNavigationBar: AnimatedNotchBottomBar(
        notchBottomBarController: _notchController,
        kIconSize: 32,
        kBottomRadius: 28.0,
        color: const Color(0xff5AD2E2),
        showLabel: false,
        notchColor: Colors.white,
        bottomBarItems: [
          BottomBarItem(
            inActiveItem: const Icon(Icons.home, color: Colors.white),
            activeItem: const Icon(Icons.home, color: Colors.purple),
            itemLabel: 'Home',
          ),
          BottomBarItem(
            inActiveItem: const FaIcon(
              FontAwesomeIcons.capsules,
              color: Colors.white,
            ),
            activeItem: const FaIcon(
              FontAwesomeIcons.capsules,
              color: Colors.purple,
            ),
            itemLabel: 'Medicine',
          ),
          BottomBarItem(
            inActiveItem: const Icon(Icons.search, color: Colors.white),
            activeItem: const Icon(Icons.search, color: Colors.purple),
            itemLabel: 'Search',
          ),
          BottomBarItem(
            inActiveItem: const Icon(Icons.person, color: Colors.white),
            activeItem: const Icon(Icons.person, color: Colors.purple),
            itemLabel: 'Profile',
          ),
        ],
        onTap: (index) {
          setState(() => _currentIndex = index);
          _pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
      ),
    );
  }
}
