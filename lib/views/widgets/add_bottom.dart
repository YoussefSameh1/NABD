import 'package:flutter/material.dart';

class AddBottom extends StatefulWidget {
  const AddBottom({super.key});

  @override
  State<AddBottom> createState() => _AddBottomState();
}

class _AddBottomState extends State<AddBottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 102.89,
      height: 96,
      decoration: BoxDecoration(
        color: Color(0xff8677C8),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: () {},
        icon: Icon(Icons.add, color: Colors.white, size: 40,),
      ),
    );
  }
}
