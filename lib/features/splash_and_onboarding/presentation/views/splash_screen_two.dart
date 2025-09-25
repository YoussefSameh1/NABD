import 'package:flutter/material.dart';
import 'package:nabd_app/core/contants/constants.dart';
import 'package:nabd_app/core/widgets/custom_button.dart';
import 'package:nabd_app/features/splash_and_onboarding/presentation/views/on_bording_two.dart';

class SplashScreenTwo extends StatelessWidget {
  const SplashScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff8677C8),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 60),
            Center(
              child: Image.asset(
                'assets/images/keep_pills_tracked.png',
                height: 250,
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              'Keep track',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              'of all medications you take',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),

            const Spacer(),

            CustomButton(
              text: 'next',
              color: kSecondaryColor,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OnBoardingTwo(),
                  ),
                );
              },
            ),
            const SizedBox(height: 50),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_buildDot(true), _buildDot(false), _buildDot(false)],
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildDot(bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: isActive ? 12 : 10,
      height: isActive ? 12 : 10,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xff4CD6E9) : Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }
}
