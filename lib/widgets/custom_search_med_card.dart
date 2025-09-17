import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nabd_app/widgets/custom_book_button.dart';

class CustomSearchMedCard extends StatelessWidget {
  const CustomSearchMedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      child: Card(
        color: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // الكارد يتوسع حسب محتواه
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const FaIcon(
                FontAwesomeIcons.pills,
                size: 60, // كبر الأيقونة شوي
                color: Color(0xff5AD2E2),
              ),
              const SizedBox(height: 12),
              const Text(
                "Pharmacy A",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                "Asprin",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                "20 L.E",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: CustombookButton(text: 'Book'), // الزر ياخد عرض الكارد
              ),
            ],
          ),
        ),
      ),
    );
  }
}
