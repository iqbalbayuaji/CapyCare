import 'package:capycare/app/styles/styles.dart';
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
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: height * 0.08,
                  ),
                  Text(
                    'CapyCare',
                    style: AppText.heading.copyWith(
                      color: AppColors.dark,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Image(
                    image: AssetImage('assets/images/icon-capy-1.png'),
                    width: width * 0.3,
                    height: width * 0.3,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  height: height * 0.55,
                  width: width,
                  decoration: BoxDecoration(
                    color: AppColors.secondary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                          color: AppColors.Quaternary,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
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
                          labelStyle: TextStyle(
                            color: AppColors.Quaternary,
                          ),
                          hintStyle: TextStyle(
                            color: AppColors.Quaternary,
                          ),
                          fillColor: AppColors.primary
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none,
                          ),
                          labelText: 'Password',
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                              color: AppColors.Quaternary,
                              width: 2,
                            ),
                          ),
                          labelStyle: TextStyle(
                            color: AppColors.Quaternary,
                          ),
                          hintStyle: TextStyle(
                            color: AppColors.Quaternary,
                          ),
                          fillColor: AppColors.primary,
                          suffixIcon: Icon(
                            Icons.visibility_off,
                            color: AppColors.Quaternary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      )
    );
  }
}
