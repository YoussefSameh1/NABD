import 'package:flutter/material.dart';

class SplashScreenTwo extends StatelessWidget {
  const SplashScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff8677C8),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // كل العناصر فوق
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 60), // نزول بسيط من فوق
            // الصورة
            Center(
              child: Image.asset(
                'assests/images/keep pills tracked.png',
                height: 250,
              ),
            ),

            const SizedBox(height: 30),

            // العنوان
            const Text(
              'Keep track',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 15),

            // النص التوضيحي
            const Text(
              'of all medications you take',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),

            const Spacer(), // يزق البوتون + الدوتس لتحت
            // زرار Next
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff4CD6E9),
                padding: const EdgeInsets.symmetric(
                  horizontal: 60,
                  vertical: 15,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                // هنا هتحط اللوجيك بعدين
              },
              child: const Text(
                "next",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),

            const SizedBox(height: 50), // المسافة بين البوتون والدوتس
            // الـ 3 نقاط (Indicators)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_buildDot(true), _buildDot(false), _buildDot(false)],
            ),

            const SizedBox(height: 30), // مسافة من تحت
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
