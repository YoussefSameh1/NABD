import 'package:flutter/material.dart';

import '../../Utils/validators.dart';
import '../../Widgets/custom_button.dart';
import '../../Widgets/custom_text_field.dart';


class VerificationScreen extends StatefulWidget {
  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final _formKey = GlobalKey<FormState>();
  final _codeController = TextEditingController();
  bool _canResend = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 60), () => setState(() => _canResend = true));
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: const Text('Verification')),
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
                hintText: 'Enter verification code',
                controller: _codeController,
                validator: Validators.validateCode,
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: screenHeight * 0.02),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomElevatedButton( // استبدال CustomButton
                  text: 'Confirm',
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, '/reset_password');
                    }
                  },
                ),
              ),
              TextButton(
                onPressed: _canResend
                    ? () {
                  setState(() => _canResend = false);
                  Future.delayed(const Duration(seconds: 60), () => setState(() => _canResend = true));
                }
                    : null,
                child: Text(_canResend ? "Resend code" : "Didn't receive code? Resend in 60s"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}