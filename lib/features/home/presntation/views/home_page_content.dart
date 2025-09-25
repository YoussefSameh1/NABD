import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nabd_app/data/medicine_list.dart';
import 'package:nabd_app/features/map/presntaion/views/my_notifi_view.dart';
import 'package:nabd_app/features/home/presntation/views/widgets/custom_medicine_card.dart';

class HomePageContent extends StatefulWidget {
  const HomePageContent({super.key});

  @override
  State<HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent>
    with SingleTickerProviderStateMixin {
  bool isLoading = true;
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);

    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          isLoading = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff8677C8),
      appBar: AppBar(
        backgroundColor: const Color(0xff8677C8),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const MyNotifiView()),
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        top: false,
        bottom: false,
        child:
            isLoading
                ? Center(
                  child: Lottie.asset(
                    'assets/animation/NABD loading indicator.json',
                    controller: _controller,
                    width: 150,
                    height: 150,
                    onLoaded: (composition) {
                      _controller
                        ..duration = composition.duration
                        ..repeat(min: 0.3, max: 1.0);
                    },
                  ),
                )
                : Column(
                  children: [
                    Container(
                      height: 300,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: Center(
                        child: Image.asset(
                          'assets/set_med.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(32),
                          ),
                        ),
                        child: ListView.builder(
                          padding: const EdgeInsets.fromLTRB(16, 16, 16, 80),
                          itemCount: medicines.length,
                          itemBuilder: (context, index) {
                            final medicine = medicines[index];
                            return CustomMedicineCard(
                              title: medicine.title,
                              time: medicine.time,
                              subtitle: medicine.subtitle,
                              icon: medicine.icon,
                              trailingWidget: medicine.trailing,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
      ),
    );
  }
}
