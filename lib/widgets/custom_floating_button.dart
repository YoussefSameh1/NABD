// import 'package:flutter/material.dart';
// import 'package:nabd_app/views/add_medicine_view.dart';

// class CustomFloatingButton extends StatelessWidget {
//   const CustomFloatingButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return FloatingActionButton.large(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
//       backgroundColor: const Color(0xff8677C8),
//       onPressed: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => const AddMedicinePage()),
//         );
//       },
//       child: const Icon(color: Colors.white, Icons.add, size: 35),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:nabd_app/views/add_medicine_view.dart';

class CustomFloatingButton extends StatefulWidget {
  const CustomFloatingButton({super.key});

  @override
  State<CustomFloatingButton> createState() => _CustomFloatingButtonState();
}

class _CustomFloatingButtonState extends State<CustomFloatingButton> {
  Offset position = const Offset(100, 500);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: position.dx,
          top: position.dy,
          child: GestureDetector(
            onPanUpdate: (details) {
              setState(() {
                position = Offset(
                  position.dx + details.delta.dx,
                  position.dy + details.delta.dy,
                );
              });
            },
            child: FloatingActionButton.large(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              backgroundColor: const Color(0xff8677C8),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddMedicinePage(),
                  ),
                );
              },
              child: const Icon(Icons.add, color: Colors.white, size: 35),
            ),
          ),
        ),
      ],
    );
  }
}
