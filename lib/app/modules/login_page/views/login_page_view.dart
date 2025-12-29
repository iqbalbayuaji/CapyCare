import 'package:capycare/app/styles/styles.dart';
import 'package:capycare/app/widgets/button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_page_controller.dart';

class LoginPageView extends GetView<LoginPageController> {
  const LoginPageView({super.key});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;    

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height * 0.06),
      
            Text(
              'CapyCare',
              style: AppText.heading.copyWith(
                color: AppColors.dark,
              ),
            ),
      
            SizedBox(height: height * 0.05),
      
            Image.asset(
              'assets/images/icon-capy-1.png',
              width: width * 0.3,
              height: width * 0.3,
            ),
      
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              width: width,
              height: height * 0.7,
              decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'Login',
                    style: AppText.heading.copyWith(
                      color: AppColors.Quaternary,
                    ),
                  ),
      
                  SizedBox(height: height * 0.03),
      
                  /// Username
                  TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                      filled: true,
                      fillColor: AppColors.primary,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide.none,
                      ),
                      labelText: 'Username/Email',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(
                          color: AppColors.Quaternary,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
      
                  SizedBox(height: height * 0.03),
      
                  /// Password
                  Obx(() => TextField(
                      obscureText: !controller.isPasswordVisible.value,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                        filled: true,
                        fillColor: AppColors.primary,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none,
                        ),
                        labelText: 'Password',
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        suffixIcon: IconButton(
                          onPressed: controller.togglePassword,
                          icon: Icon(
                            controller.isPasswordVisible.value
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: AppColors.Quaternary,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                            color: AppColors.Quaternary,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
      
                  SizedBox(height: height * 0.03),
      
                  /// Login Button
                  PrimaryButton(
                    label: "Login", onTap: () {},
                    activeColor: AppColors.Quaternary,
                    inactiveColor: AppColors.enable,
                    textStyle: AppText.button,
                  ),
      
                  SizedBox(height: height * 0.03),
      
                  /// Divider
                  Container(
                    height: 4,
                    width: width,
                    decoration: BoxDecoration(
                      color: AppColors.Quaternary,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
      
                  SizedBox(height: 15),
      
                  /// Social Icons
                  Row(
                    children: [
                      _socialButton(width, height),
                      SizedBox(width: width * 0.02),
                      _socialButton(width, height),
                    ],
                  ),
      
                  SizedBox(height: height * 0.02),
      
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Didn’t have account?',
                      style: AppText.caption.copyWith(
                        color: AppColors.dark,
                      ),
                    ),
                  ),
      
                  SizedBox(height: height * 0.02),
      
                  PrimaryButton(
                    label: "Create Account", onTap: () {},
                    activeColor: AppColors.Quaternary,
                    inactiveColor: AppColors.tertiary,
                    textStyle: AppText.button,
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _socialButton(double width, double height) {
  return Container(
    height: height * 0.06,
    width: width * 0.13,
    decoration: BoxDecoration(
      color: AppColors.Quaternary,
      borderRadius: BorderRadius.circular(50),
    ),
    child: Center(
      child: Icon(
        Icons.facebook,
        size: width * 0.09,
        color: AppColors.tertiary,
      ),
    ),
  );
}

