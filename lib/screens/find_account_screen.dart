import 'package:facebook_ui_auth/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_text_field.dart';

class FindAccountScreen extends StatelessWidget {
  const FindAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 100),

                SizedBox(
                  width: 100,
                  height: 100,
                  child: Image.asset("assets/images/Facebook.png"),
                ),

                const SizedBox(height: 60),

                const Text(
                  "Find Your Account ",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 10),

                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    "Enter Your email or phone number to search for your account ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.grey[700]),
                  ),
                ),

                const SizedBox(height: 30),

                Container(
                  margin: const EdgeInsets.only(
                    left: 25,
                    right: 25,
                    bottom: 20,
                  ),
                  child: const CustomTextField(hintText: "Email or Phone"),
                ),

                const SizedBox(height: 4),

                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        backgroundColor: AppColors.primaryBlue,
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Send Rest Link",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Back to Login",
                    style: TextStyle(
                      color: AppColors.primaryBlue,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
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
