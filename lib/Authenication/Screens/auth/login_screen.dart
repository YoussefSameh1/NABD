import 'package:flutter/material.dart';
import '../../Utils/AppAssets.dart';
import '../../Utils/constants.dart';
import '../../Utils/validators.dart';
import '../../Widgets/custom_button.dart';
import '../../Widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            colors: [Color(0xFF8A4AF3), Color(0xFF6A1B9A)],
          ).createShader(bounds),
          child: const Text(
            'Login',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        centerTitle: true,
        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back),
        //   onPressed: () => Navigator.pop(context),
        // ),
      ),
      body: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(100),
        ),
        child: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF8A4AF3), Color(0xFF6A1B9A)],
            ),
          ),
          child: SingleChildScrollView(
            child: SafeArea(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(100),
                      ),
                      child: SizedBox(
                        height: screenHeight * 0.3,
                        width: screenWidth * 0.7,
                        child: Image.asset(
                          'assets/images/login.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                          SizedBox(height: screenHeight * 0.01),
                          Container(
                            alignment: Alignment.centerRight,
                            padding: const EdgeInsets.only(right: 20),
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/forgot_password');
                              },
                              child: const Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationColor: Color(0xfff3952b),
                                  color: Color(0xfff3952b),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                            child: SizedBox(
                              width: double.infinity,
                              child: CustomElevatedButton(
                                text: 'Login',
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Login Successful')));
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
                                'Don\'t have an account?',
                                style: TextStyle(
                                  color: Color(0xfff3952b),
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(width: screenWidth * 0.01),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/signup');
                                },
                                child: const Text(
                                  'Sign up',
                                  style: TextStyle(
                                    color: Constants.secondaryColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  color: Constants.secondaryColor,
                                  thickness: 2,
                                  indent: screenWidth * 0.1,
                                  endIndent: screenWidth * 0.04,
                                ),
                              ),
                              const Text(
                                'or',
                                style: TextStyle(
                                  color: Constants.secondaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Expanded(
                                child: Divider(
                                  color: Constants.secondaryColor,
                                  thickness: 2,
                                  indent: screenWidth * 0.04,
                                  endIndent: screenWidth * 0.1,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenHeight * 0.01),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                            child: SizedBox(
                              width: double.infinity,
                              child: CustomElevatedButton(
                                text: 'Login with Google',
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Login with Google')));
                                },
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.01),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}