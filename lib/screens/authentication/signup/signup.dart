import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pharmacy_app/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:pharmacy_app/screens/home/home_screen.dart';
import 'package:pharmacy_app/screens/map/start_map.dart';
import 'package:pharmacy_app/screens/service_providers/profile.dart';
import 'package:pharmacy_app/utils/app_colors.dart';
import 'package:pharmacy_app/utils/app_images.dart';
import 'package:pharmacy_app/widgets/custom_text.dart';
import 'package:pharmacy_app/widgets/custom_textfield.dart';
import 'package:pharmacy_app/widgets/primary_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: Get.width,
              height: Get.height * 0.3,
              decoration: const BoxDecoration(
             
                color: AppColors.primarybackColor,
                image: DecorationImage(
                  image: AssetImage(AppImaes.bgasset),
                  fit: BoxFit.cover,
                  
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CText(
                    text: 'Sign Up',
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                  CText(
                    text: 'Please register yourself',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(height: Get.height * 0.3 - 20),
                Expanded(
                  child: Container(
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: AppColors.primarywhiteColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.r),
                        topRight: Radius.circular(20.r),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.0.w, vertical: 20.h),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CText(
                              text: 'FULL NAME',
                              color: AppColors.headingcolor,
                              fontSize: 14,
                            ),
                            CustomTextField(
                              controller: TextEditingController(),
                              hintText: 'Noura Al Nayadi',
                              keyboardType: TextInputType.name,
                              textcolor: AppColors.headingcolor,
                            ),
                            SizedBox(height: 10.h),
                            CText(
                              text: 'PHONE NUMBER',
                              color: AppColors.headingcolor,
                              fontSize: 14,
                            ),
                            CustomTextField(
                              controller: TextEditingController(),
                              hintText: '+13259998663',
                              keyboardType: TextInputType.name,
                              textcolor: AppColors.headingcolor,
                            ),
                            SizedBox(height: 10.h),
                            CText(
                              text: 'EMAIL',
                              color: AppColors.headingcolor,
                              fontSize: 14,
                            ),
                            CustomTextField(
                              controller: TextEditingController(),
                              hintText: 'Noura@gmail.com',
                              keyboardType: TextInputType.name,
                              textcolor: AppColors.headingcolor,
                            ),
                            SizedBox(height: 10.h),
                            CText(
                              text: 'PASSWORD',
                              color: AppColors.headingcolor,
                              fontSize: 14,
                            ),
                            CustomTextField(
                              controller: TextEditingController(),
                              hintText: '1236578',
                              keyboardType: TextInputType.name,
                              textcolor: AppColors.headingcolor,
                              hasSuffix: true,
                              suffixIcon: Icon(Icons.visibility),
                            ),
                            SizedBox(height: 10.h),
                            CText(
                              text: 'CONFIRM PASSWORD',
                              color: AppColors.headingcolor,
                              fontSize: 14,
                            ),
                            CustomTextField(
                              controller: TextEditingController(),
                              hintText: 'Confirm password',
                              keyboardType: TextInputType.name,
                              hasSuffix: true,
                              suffixIcon: Icon(Icons.visibility),
                              textcolor: AppColors.headingcolor,
                            ),
                            // SizedBox(height: 10.h),
                            // DottedBorder(
                            //   color: AppColors.primaryappcolor,
                            //   radius: Radius.circular(10.r),
                            //   borderType: BorderType.RRect,
                            //   strokeWidth: 2,
                            //   child: Container(
                            //     height: 203.23.h,
                            //     width: Get.width,
                            //     child: Column(
                            //       mainAxisAlignment: MainAxisAlignment.center,
                            //       children: [
                            //         Container(
                            //           width: 57.w,
                            //           height: 57.h,
                            //           child: const CircleAvatar(
                            //             backgroundColor:
                            //                 AppColors.textfieldcolor,
                            //             child: Icon(
                            //               Icons.camera_alt,
                            //               color: AppColors.primaryappcolor,
                            //             ),
                            //           ),
                            //         ),
                            //         SizedBox(height: 16.h),
                            //         CText(
                            //           text: 'Upload a Photo of Your License',
                            //           fontSize: 13.38,
                            //           fontWeight: FontWeight.w500,
                            //           color: AppColors.headingcolor
                            //               .withOpacity(0.6),
                            //         ),
                            //       ],
                            //     ),
                            //   ),
                            // ),
                            // SizedBox(height: 20.h),
                            // DottedBorder(
                            //   color: AppColors.primaryappcolor,
                            //   radius: Radius.circular(10.r),
                            //   borderType: BorderType.RRect,
                            //   strokeWidth: 2,
                            //   child: Container(
                            //     height: 203.23.h,
                            //     width: Get.width,
                            //     child: Column(
                            //       mainAxisAlignment: MainAxisAlignment.center,
                            //       children: [
                            //         Container(
                            //           width: 57.w,
                            //           height: 57.h,
                            //           child: const CircleAvatar(
                            //             backgroundColor:
                            //                 AppColors.textfieldcolor,
                            //             child: Icon(
                            //               Icons.camera_alt,
                            //               color: AppColors.primaryappcolor,
                            //             ),
                            //           ),
                            //         ),
                            //         SizedBox(height: 16.h),
                            //         CText(
                            //           text:
                            //               'Upload a photo proof of your Diploma',
                            //           fontSize: 13.38,
                            //           fontWeight: FontWeight.w500,
                            //           color: AppColors.headingcolor
                            //               .withOpacity(0.6),
                            //         ),
                            //       ],
                            //     ),
                            //   ),
                            // ),

                            SizedBox(height: 49.h),
                            PrimaryButton(
                                text: 'REGISTER NOW',
                                onTap: () {
                                  Get.to(() => BotomnavbarScreen());
                                  // Get.to(() => StartScreen());
                                }),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              left: (Get.width - 91.w) / 2,
              top: 160.h,
              child: Container(
                width: 91.w,
                height: 91.h,
                decoration: BoxDecoration(
                color: AppColors.textfieldcolor,
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.primaryappcolor,
                  width: 2,
                  style: BorderStyle.solid,
                ),
                ),
                child: const CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Icon(
                  Icons.photo_album_rounded,
                  size: 38,
                  color: AppColors.primaryappcolor,
                ),
                ),
              ),
            ),
        
        
          ],
        ),
      ),
    );
  }
}
