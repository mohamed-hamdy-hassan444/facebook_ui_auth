import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const FacebookAuthApp());
}

class FacebookAuthApp extends StatelessWidget {
  const FacebookAuthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
