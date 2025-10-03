import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nabd_app/views/models/order_model.dart';

class OrderDetailsScreen extends StatelessWidget {
  final OrderDetailsScreenParams params;

  const OrderDetailsScreen({super.key, required this.params});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const FaIcon(
            FontAwesomeIcons.arrowLeft,
            color: Color(0xff8677C8),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Order details',
          style: TextStyle(
            color: Color(0xff8677C8),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // patient info
              Row(
                children: const [
                  Icon(Icons.assignment, color: Colors.black54),
                  SizedBox(width: 8),
                  Text(
                    "Patient info",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ListTile(
                leading: const Icon(Icons.person),
                title: Text(params.patientName),
              ),
              ListTile(
                leading: const Icon(Icons.phone),
                title: Text(params.phone),
              ),
              ListTile(
                leading: const Icon(Icons.location_on),
                title: Text(params.address),
              ),

              const SizedBox(height: 70),

              // order info
              Row(
                children: const [
                  Icon(Icons.list_alt, color: Colors.black54),
                  SizedBox(width: 8),
                  Text(
                    "Order info",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ListTile(
                leading: const Icon(Icons.medical_services, color: Colors.blue),
                title: const Text("Requested medicine"),
                trailing: Text(params.medicine),
              ),
              ListTile(
                leading: const Icon(Icons.sticky_note_2_outlined),
                title: const Text("Quantity"),
                trailing: Text(params.quantity),
              ),

              const SizedBox(height: 40),

              // Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      minimumSize: const Size(120, 45),
                    ),
                    child: const Text("Reject"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: const Size(120, 45),
                    ),
                    child: const Text("Accept"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}