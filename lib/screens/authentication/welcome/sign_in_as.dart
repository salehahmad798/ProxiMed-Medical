import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pharmacy_app/screens/authentication/login/login.dart';
import 'package:pharmacy_app/screens/home/home_screen.dart';
import 'package:pharmacy_app/screens/service_providers/profile.dart';
import 'package:pharmacy_app/screens/service_providers/self_register.dart';
import 'package:pharmacy_app/utils/app_colors.dart';
import 'package:pharmacy_app/utils/app_images.dart';
import 'package:pharmacy_app/widgets/custom_appbar.dart';
import 'package:pharmacy_app/widgets/custom_text.dart';
import 'package:pharmacy_app/widgets/primary_button.dart';

class SignInAsScreen extends StatefulWidget {
  const SignInAsScreen({super.key});

  @override
  State<SignInAsScreen> createState() => _SignInAsScreenState();
}

class _SignInAsScreenState extends State<SignInAsScreen> {
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
              margin: EdgeInsets.only(top: 386.h),
              width: Get.width,
              height: 375.h,
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
                          text: 'Sign In As',
                          color: AppColors.primaryappcolor,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 40.h),
                      PrimaryButton(
                        text: 'USER',
                        height: 72.h,
                        onTap: () {
                          print('Button pressed');
                          Get.to(() => LoginScreen());
                        },
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      PrimaryButton(
                        text:'SERVICE PROVIDER',
                        height: 72.h,
                        onTap: () {
                          print('Button Service provider');
                          Get.to(() => SelfRegisterScreen());
                        },
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
