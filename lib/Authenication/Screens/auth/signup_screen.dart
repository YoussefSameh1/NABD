import 'package:flutter/material.dart';
import '../../Utils/constants.dart';
import '../../Utils/validators.dart';
import '../../Widgets/custom_text_field.dart';
import '../../Widgets/custom_button.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  String _accountType = 'Patient';

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            colors: [Color(0xFF8A4AF3), Color(0xFF6A1B9A)],
          ).createShader(bounds),
          child: const Text(
            'Sign Up',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: ClipRRect( // إضافة Border Radius من الـ Top Left
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(100),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF8A4AF3), Color(0xFF6A1B9A)],
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [

                Expanded(
                  child: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: screenHeight * 0.10,
                            width: screenWidth * 0.7,
                            child: Image.asset(
                              'assets/images/Sign_up.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomTextField(
                                  hintText: 'Enter your name',
                                  icon: Icons.person,
                                  controller: _nameController,
                                  validator: Validators.validateName,
                                  hintStyle: const TextStyle(color: Color(0xFF9575CD)),
                                ),
                                CustomTextField(
                                  hintText: 'Phone Number',
                                  icon: Icons.phone,
                                  controller: _phoneController,
                                  validator: Validators.validatePhone,
                                  keyboardType: TextInputType.phone,
                                  hintStyle: const TextStyle(color: Color(0xFF9575CD)),
                                ),
                                CustomTextField(
                                  hintText: 'Enter your email',
                                  icon: Icons.email,
                                  controller: _emailController,
                                  validator: Validators.validateEmail,
                                  keyboardType: TextInputType.emailAddress,
                                  hintStyle: const TextStyle(color: Color(0xFF9575CD)),
                                ),
                                CustomTextField(
                                  hintText: 'Enter a password',
                                  icon: Icons.lock,
                                  obscureText: true,
                                  controller: _passwordController,
                                  validator: Validators.validatePassword,
                                  hintStyle: const TextStyle(color: Color(0xFF9575CD)),
                                ),
                                CustomTextField(
                                  hintText: 'Confirm password',
                                  icon: Icons.lock,
                                  obscureText: true,
                                  controller: _confirmPasswordController,
                                  validator: (value) => Validators.validateConfirmPassword(_passwordController.text, value),
                                  hintStyle: const TextStyle(color: Color(0xFF9575CD)),
                                ),
                                SizedBox(height: screenHeight * 0.01),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ChoiceChip(
                                      label: const Text('Patient'),
                                      selected: _accountType == 'Patient',
                                      selectedColor: Color(0xfff3952b),
                                      onSelected: (selected) => setState(() => _accountType = 'Patient'),
                                    ),
                                    const SizedBox(width: 8),
                                    ChoiceChip(
                                      label: const Text('Pharmacy'),
                                      selected: _accountType == 'Pharmacy',
                                      selectedColor: Color(0xfff3952b),
                                      onSelected: (selected) => setState(() => _accountType = 'Pharmacy'),
                                    ),
                                    const SizedBox(width: 8),
                                    ChoiceChip(
                                      label: const Text('Relative'),
                                      selected: _accountType == 'Relative',
                                      selectedColor: Color(0xfff3952b),
                                      onSelected: (selected) => setState(() => _accountType = 'Relative'),
                                    ),
                                  ],
                                ),
                                SizedBox(height: screenHeight * 0.01),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: CustomElevatedButton(
                                      text: 'Create Account',
                                      onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Sign Up Successful')));
                                        }
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(height: screenHeight * 0.01),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Already have an account?',
                                      style: TextStyle(
                                        color: Color(0xfff3952b),
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(width: screenWidth * 0.01),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, '/login');
                                      },
                                      child: const Text(
                                        'Log in',
                                        style: TextStyle(
                                          color: Constants.secondaryColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}