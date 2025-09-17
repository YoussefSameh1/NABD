import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nabd_app/views/add_medicine_view.dart';
import 'package:nabd_app/widgets/custom_floating_button.dart';
import 'package:nabd_app/widgets/home_body_item_card.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomFloatingButton(),

      backgroundColor: const Color(0xff8677C8),

      appBar: AppBar(
        backgroundColor: const Color(0xff8677C8),
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications, color: Colors.white),
          ),
        ],
      ),

      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            height: 300,
            child: Center(
              child: Image.asset('assets/set_med.png', fit: BoxFit.contain),
            ),
          ),

          HomeBodyItemCard(),
        ],
      ),
    );
  }
}
