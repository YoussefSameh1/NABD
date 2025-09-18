import 'package:flutter/material.dart';
import 'Authenication/Screens/auth/forgot_password_screen.dart';
import 'Authenication/Screens/auth/login_screen.dart';
import 'Authenication/Screens/auth/reset_password_screen.dart';
import 'Authenication/Screens/auth/signup_screen.dart';
import 'Authenication/Screens/auth/verification_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
        '/forgot_password': (context) => ForgotPasswordScreen(),
        '/verification': (context) => VerificationScreen(),
        '/reset_password': (context) => ResetPasswordScreen(),
      },
    );
  }
}