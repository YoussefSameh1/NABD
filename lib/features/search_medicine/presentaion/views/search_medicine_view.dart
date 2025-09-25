import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:nabd_app/core/widgets/custom_appbar.dart';
import 'package:nabd_app/features/map/presntaion/views/nearby_pharmacies_map_view.dart';
import 'package:nabd_app/core/widgets/custom_text_field.dart';
import 'package:nabd_app/core/widgets/custom_search_med_card.dart';

class SearchMedicineView extends StatefulWidget {
  const SearchMedicineView({super.key});

  @override
  State<SearchMedicineView> createState() => _SearchMedicineViewState();
}

class _SearchMedicineViewState extends State<SearchMedicineView>
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
      appBar: CustomAppBar(title: 'Search a Medicine', automaticallyImplyLeading: false,),
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
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: CustomTextField(
                      hintText: 'Search a Medicine',
                      icon: Icons.search,
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                      padding: const EdgeInsets.all(12),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.67,
                            crossAxisSpacing: 2,
                            mainAxisSpacing: 2,
                          ),
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (context) =>
                                        const NearbyPharmaciesMapView(),
                              ),
                            );
                          },
                          child: const CustomSearchMedCard(),
                        );
                      },
                    ),
                  ),
                ],
              ),
    );
  }
}
