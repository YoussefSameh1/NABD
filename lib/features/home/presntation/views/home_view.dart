import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:nabd_app/core/contants/page.dart';
import 'package:nabd_app/features/home/presntation/views/widgets/custom_floating_button.dart';

import '../../../../core/contants/HOME_NAV_itemlist.dart' show homeNavItems;

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late final NotchBottomBarController _bottomBarController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _bottomBarController = NotchBottomBarController(index: _currentIndex);
  }

  @override
  void dispose() {
    _bottomBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: homePages[_currentIndex],

      floatingActionButton: AnimatedSwitcher(
        duration: const Duration(milliseconds: 400),
        transitionBuilder:
            (child, animation) => ScaleTransition(
              scale: animation,
              child: FadeTransition(opacity: animation, child: child),
            ),
        child:
            _currentIndex == 0
                ? const CustomFloatingButton(key: ValueKey('fab-home'))
                : const SizedBox(key: ValueKey('fab-empty')),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
      bottomNavigationBar: AnimatedNotchBottomBar(
        notchBottomBarController: _bottomBarController,
        color: const Color(0xff5AD2E2),
        notchColor: const Color(0xff8677C8),
        showLabel: false,
        kIconSize: 30,
        kBottomRadius: 28,
        bottomBarItems: homeNavItems,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}
