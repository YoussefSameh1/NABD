import 'package:flutter/material.dart';
import 'package:nabd_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    this.hint = '',
    this.isobscure = false,
    this.inputType = TextInputType.text,
  });

  final String label;
  final TextInputType inputType;
  final String hint;
  final bool isobscure;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              label,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 10),
          TextField(
            obscureText: isobscure,
            obscuringCharacter: '*',
            keyboardType: inputType,
            decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32)),
                borderSide: BorderSide(color: kHintColor),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(32)),
                borderSide: BorderSide(color: kPrimaryColor, width: 2),
              ),
              hintText: hint,
              hintStyle: const TextStyle(color: kHintColor, fontSize: 16),
              contentPadding: EdgeInsets.only(left: 40),
            ),
          ),
        ],
      ),
    );
  }
}
