import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nabd_app/widgets/custom_addmed_textfield.dart';
import 'package:nabd_app/widgets/custom_button.dart';
import 'package:nabd_app/widgets/custom_appbar.dart';

class AddMedicinePage extends StatelessWidget {
  const AddMedicinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: const CustomAppbar(title: 'Add Medicine'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
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

                        CustomButton(text: 'Set Reminder', onTap: () {}),
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
