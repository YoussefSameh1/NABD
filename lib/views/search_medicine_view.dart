import 'package:flutter/material.dart';
import 'package:nabd_app/views/nearby_pharmacies_map_view.dart';
import 'package:nabd_app/widgets/custom_addmed_textfield.dart';
import 'package:nabd_app/widgets/custom_appbar.dart';
import 'package:nabd_app/widgets/custom_search_med_card.dart';

class SearchMedicineView extends StatelessWidget {
  const SearchMedicineView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppbar(title: 'Search a Medicine'),
      body: Column(
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
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                        builder: (context) => const NearbyPharmaciesMapView(),
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
