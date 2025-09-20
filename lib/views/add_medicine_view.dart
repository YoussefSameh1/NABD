import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:nabd_app/widgets/custom_addmed_textfield.dart';
import 'package:nabd_app/widgets/custom_button.dart';
import 'package:nabd_app/widgets/custom_appbar.dart';

class AddMedicinePage extends StatefulWidget {
  const AddMedicinePage({super.key});

  @override
  State<AddMedicinePage> createState() => _AddMedicinePageState();
}

class _AddMedicinePageState extends State<AddMedicinePage>
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
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: const CustomAppbar(title: 'Add Medicine'),
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
              : SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 16,
                  ),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return SingleChildScrollView(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: constraints.maxHeight,
                          ),
                          child: IntrinsicHeight(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                const SizedBox(height: 20),
                                const Center(
                                  child: FaIcon(
                                    FontAwesomeIcons.capsules,
                                    size: 60,
                                    color: Color(0xff8677C8),
                                  ),
                                ),
                                const SizedBox(height: 30),
                                const CustomTextField(
                                  hintText: 'Enter medicine name',
                                  title: 'Medicine Name',
                                ),
                                const SizedBox(height: 16),
                                const CustomTextField(
                                  hintText: 'Enter time',
                                  title: 'When to take',
                                ),
                                const SizedBox(height: 16),
                                const CustomTextField(
                                  hintText: 'Enter amount',
                                  title: 'Amount',
                                ),
                                const SizedBox(height: 65),
                                CustomButton(
                                  color: const Color(0xff5AD2E2),
                                  text: 'Set Reminder',
                                  onTap: () {},
                                ),
                                const SizedBox(height: 15),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
    );
  }
}
