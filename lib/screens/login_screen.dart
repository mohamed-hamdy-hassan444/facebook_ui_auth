import 'package:facebook_ui_auth/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_text_field.dart';
import 'signup_screen.dart';
import 'find_account_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 100),

              SizedBox(
                width: 100,
                height: 100,
                child: Image.asset("assets/images/Facebook.png"),
              ),

              const SizedBox(height: 50),

              // Email or Phone
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: const CustomTextField(hintText: "Email or Phone"),
              ),

              const SizedBox(height: 20),

              // Password
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: const CustomTextField(
                  hintText: "Password",
                  obscureText: true,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  left: 20,
                  right: 20,
                  bottom: 10,
                ),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryBlue,
                    ),
                    child: const Text(
                      "Log in",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),

              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FindAccountScreen(),
                    ),
                  );
                },
                child: Text(
                  "Forget Password ?",
                  style: TextStyle(color: AppColors.primaryBlue, fontSize: 17),
                ),
              ),

              const SizedBox(height: 20),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Divider(thickness: 2, color: Colors.grey[350]),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("OR", style: TextStyle(fontSize: 20)),
                    ),
                    Expanded(
                      child: Divider(thickness: 2, color: Colors.grey[350]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 20,
                  right: 20,
                  bottom: 10,
                ),
                child: SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupScreen()),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: AppColors.green, width: 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Create New Account",
                      style: TextStyle(
                        color: AppColors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
