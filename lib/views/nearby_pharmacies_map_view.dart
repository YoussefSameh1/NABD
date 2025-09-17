import 'package:flutter/material.dart';
import 'package:nabd_app/widgets/custom_appbar.dart';
import 'package:nabd_app/widgets/custom_map_card.dart';

class NearbyPharmaciesMapView extends StatelessWidget {
  const NearbyPharmaciesMapView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Nearby Pharmacies'),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/map.jpeg", fit: BoxFit.cover),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.35,
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Color(0xffE6E2E2),
                borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    spreadRadius: 2,
                  ),
                ],
              ),

              child: ListView(
                children: const [
                  CustomMapCard(),
                  SizedBox(height: 5),
                  CustomMapCard(),
                  SizedBox(height: 5),
                  CustomMapCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
