import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pharmacy_app/screens/authentication/forgot_password/forgot_screen.dart';
import 'package:pharmacy_app/screens/authentication/signup/signup.dart';
import 'package:pharmacy_app/screens/home/home_screen.dart';
import 'package:pharmacy_app/screens/service_providers/profile.dart';
import 'package:pharmacy_app/screens/service_providers/self_register.dart';
import 'package:pharmacy_app/utils/app_colors.dart';
import 'package:pharmacy_app/utils/app_images.dart';
import 'package:pharmacy_app/widgets/custom_appbar.dart';
import 'package:pharmacy_app/widgets/custom_text.dart';
import 'package:pharmacy_app/widgets/custom_textfield.dart';
import 'package:pharmacy_app/widgets/primary_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primarybackColor,
        body: Stack(
          children: [
            Container(
              width: Get.width,
              height: Get.height * 0.5,
              decoration: const BoxDecoration(
                color: AppColors.primarybackColor,
                image: DecorationImage(
                  image: AssetImage(
                    AppImaes.bgasset,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImaes.signInImg,
                    width: 300.w,
                    height: 300.h,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.4),
              width: Get.width,
              height: 426.h,
              decoration: BoxDecoration(
                color: AppColors.primarywhiteColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.r),
                  topRight: Radius.circular(24.r),
                ),
              ),
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 20.h),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 358.w,
                        child: CText(
                          maxLines: 3,
                          alignText: TextAlign.center,
                          text: 'Log into your account',
                          color: AppColors.primaryappcolor,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 26.h,
                      ),
                      CText(
                        alignText: TextAlign.center,
                        text: 'EMAIL',
                        color: AppColors.headingcolor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),

                      CustomTextField(
                          controller: TextEditingController(),
                          hintText: 'Enter your email',
                          keyboardType: TextInputType.emailAddress,
                          textcolor: AppColors.headingcolor),
                      CText(
                        alignText: TextAlign.center,
                        text: 'PASSWORD',
                        color: AppColors.headingcolor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),

                      CustomTextField(
                          controller: TextEditingController(),
                          hintText: 'Enter your password',
                          keyboardType: TextInputType.name,
                          hasSuffix: true,
                          suffixIcon: Icon(Icons.visibility),
                          textcolor: AppColors.headingcolor),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(()=>ForgotPasswordScreen());
                          },
                            child: CText(
                              text: 'Forgot password?',
                              color: AppColors.headingcolor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40.h),
                      PrimaryButton(
                        text: 'LOGIN',
                        height: 72.h,
                        onTap: () {
                          print('Button pressed');
                     Get.to(()=>SignupScreen());
                        },
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CText(
                            text: 'Don’t have an account?',
                            color: AppColors.headingcolor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(()=>SignupScreen());
                            },
                            child: CText(
                              text: ' Sign Up here',
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColors.primarybackColor,
                            ),
                          )
                        ],
                      ),
                      
                    ],
                  ),
                ),
              ),
            ),
            // Custom AppBar
            // Positioned(
            //   top: 0,
            //   left: 0,
            //   right: 0,
            //   child: CustomAppBar(text: ''),
            // ),
          ],
        ),
      ),
    );
  }
}
