import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nabd_app/data/medicine_list.dart';
import 'package:nabd_app/widgets/custom_appbar.dart';
import 'package:nabd_app/widgets/custom_button.dart';
import 'package:nabd_app/widgets/custom_medicine_card.dart';

class MyNotifiView extends StatefulWidget {
  const MyNotifiView({super.key});

  @override
  State<MyNotifiView> createState() => _MyNotifiViewState();
}

class _MyNotifiViewState extends State<MyNotifiView>
    with SingleTickerProviderStateMixin {
  bool isLoading = true;
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);

    Future.delayed(const Duration(seconds: 3), () {
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
      backgroundColor: Colors.white,
      appBar: const CustomAppbar(title: 'My Notifications'),
      body:
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
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.all(16),
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
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: CustomButton(
                      color: const Color(0xff8677C8),
                      text: 'Set Reminder',
                      onTap: () {},
                    ),
                  ),
                  SizedBox(height: 60),
                ],
              ),
    );
  }
}
