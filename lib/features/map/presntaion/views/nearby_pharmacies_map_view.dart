import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nabd_app/core/widgets/custom_appbar.dart';
import 'package:nabd_app/features/map/presntaion/views/widgets/custom_map_card.dart';

class NearbyPharmaciesMapView extends StatefulWidget {
  const NearbyPharmaciesMapView({super.key});

  @override
  State<NearbyPharmaciesMapView> createState() =>
      _NearbyPharmaciesMapViewState();
}

class _NearbyPharmaciesMapViewState extends State<NearbyPharmaciesMapView>
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
      appBar: CustomAppBar(title: 'Nearby Pharmacies'),
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
              : Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset("assets/images/map.jpeg", fit: BoxFit.cover),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      padding: const EdgeInsets.all(16),
                      decoration: const BoxDecoration(
                        color: Color(0xffE6E2E2),
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(32),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 8,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: ListView(
                        children: [
                          CustomMapCard(),
                          const SizedBox(height: 5),
                          CustomMapCard(),
                          const SizedBox(height: 5),
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
