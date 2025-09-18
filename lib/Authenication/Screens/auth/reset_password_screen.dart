import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import '../../Utils/validators.dart';
import '../../Widgets/custom_button.dart';
import '../../Widgets/custom_text_field.dart';


class ResetPasswordScreen extends StatefulWidget {
  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: const Text('New Password')),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF8A4AF3), Color(0xFF6A1B9A)],
          ),
        ),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                hintText: 'Enter new password (at least 8 digits)',
                icon: Icons.lock,
                obscureText: true,
                controller: _passwordController,
                validator: Validators.validatePassword,
              ),
              CustomTextField(
                hintText: 'Confirm password',
                icon: Icons.lock,
                obscureText: true,
                controller: _confirmPasswordController,
                validator: (value) => Validators.validateConfirmPassword(_passwordController.text, value),
              ),
              SizedBox(height: screenHeight * 0.02),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomElevatedButton( // استبدال CustomButton
                  text: 'Send',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, '/login');
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}