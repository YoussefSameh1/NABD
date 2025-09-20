import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nabd_app/views/widgets/no_check.dart';
import 'package:nabd_app/views/widgets/pending_check.dart';
import 'package:nabd_app/views/widgets/right_check.dart';
import 'package:nabd_app/views/widgets/custom_canceled.dart';
import 'package:nabd_app/views/widgets/custom_confirmed.dart';
import 'package:nabd_app/views/widgets/custom_pending.dart';


class MyBooking extends StatelessWidget {
  const MyBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const FaIcon(
            FontAwesomeIcons.arrowLeft,
            color: Color(0xff8677C8),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('My Booking', style: TextStyle(color: Color(0xff8677C8))),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.all(16),
          children: [
            CustomConfirmedCard(
              trailingWidget: CustomRightCheck(),
              title: 'Asprin',
              condition: 'Confirmed ...',
              subtitle: '1 capsules',
              icon: FontAwesomeIcons.capsules,
            ),
            CustomPendingCard(
              trailingWidget: CustomPendingCheck(),
              title: 'Hibiotic',
              condition: 'Pending ...',
              subtitle: '2 capsules',
              icon: FontAwesomeIcons.capsules,
            ),
            CustomCanceledCard(
              trailingWidget: CustomNoCheck(),
              title: 'Comtrex',
              condition: 'Pending ...',
              subtitle: '5 capsules',
              icon: FontAwesomeIcons.capsules,
            ),
          ],
        ),
      ),
    );
  }
}
