import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pharmacy_app/screens/map/start_map.dart';
import 'package:pharmacy_app/screens/service_providers/monthly_payment_screen.dart';
import 'package:pharmacy_app/screens/service_providers/profile.dart';
import 'package:pharmacy_app/utils/app_colors.dart';
import 'package:pharmacy_app/utils/app_images.dart';
import 'package:pharmacy_app/widgets/custom_text.dart';
import 'package:pharmacy_app/widgets/custom_textfield.dart';
import 'package:pharmacy_app/widgets/primary_button.dart';

class SelfRegisterScreen extends StatefulWidget {
  const SelfRegisterScreen({super.key});

  @override
  State<SelfRegisterScreen> createState() => _SelfRegisterScreenState();
}

class _SelfRegisterScreenState extends State<SelfRegisterScreen> {
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
                    text: 'Self Register',
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
                            SizedBox(height: 16.h),
                            CText(
                              text: 'PROFESSION',
                              color: AppColors.headingcolor,
                              fontSize: 14,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 10.w),
                              width: double.infinity,
                              height: 60.h,
                              decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(25.r),
                              ),
                              padding: const EdgeInsets.all(0),
                              child: DropdownButtonFormField<String>(
                              dropdownColor: AppColors.textfieldcolor, 
                              decoration: InputDecoration(
                                hintText: 'Select Registration Type',
                                hintStyle: TextStyle(
                                color: AppColors.headingcolor,
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                                fontFamily: 'Poppins',
                                ),
                                suffixIcon: Icon(
                                Icons.keyboard_arrow_down_sharp,
                                color: AppColors.primaryappcolor,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 18,
                                ),
                                fillColor: AppColors.textfieldcolor,
                                filled: true,
                                border: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.transparent),
                                borderRadius: BorderRadius.circular(10.r),
                                ),
                              ),
                              items: [
                                DropdownMenuItem(
                                value: 'Doctor',
                                child: CText(
                                  text: 'Doctor',
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.headingcolor,
                                ),
                                ),
                                DropdownMenuItem(
                                value: 'Clinic Register',
                                child: CText(
                                  text: 'Clinic Register',
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.headingcolor,
                                ),
                                ),
                                DropdownMenuItem(
                                value: 'Transport Register',
                                child: CText(
                                  text: 'Transport Register',
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.headingcolor,
                                ),
                                ),
                                DropdownMenuItem(
                                value: 'Pharmacy Register',
                                child: CText(
                                  text: 'Pharmacy Register',
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.headingcolor,
                                ),
                                ),
                                DropdownMenuItem(
                                value: 'Laboratory Register',
                                child: CText(
                                  text: 'Laboratory Register',
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.headingcolor,
                                ),
                                ),
                                DropdownMenuItem(
                                value: 'Practitioner Register',
                                child: CText(
                                  text: 'Practitioner Register',
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.headingcolor,
                                ),
                                ),
                              ],
                              onChanged: (value) {
                                // Handle change
                              },
                              ),
                            ),
                            SizedBox(height: 16.h),
                            DottedBorder(
                              color: AppColors.primaryappcolor,
                              radius: Radius.circular(10.r),
                              borderType: BorderType.RRect,
                              strokeWidth: 2,
                              child: Container(
                                height: 203.23.h,
                                width: Get.width,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 57.w,
                                      height: 57.h,
                                      child: const CircleAvatar(
                                        backgroundColor:
                                            AppColors.textfieldcolor,
                                        child: Icon(
                                          Icons.camera_alt,
                                          color: AppColors.primaryappcolor,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 16.h),
                                    CText(
                                      text: 'Upload a Photo of Your License',
                                      fontSize: 13.38,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.headingcolor
                                          .withOpacity(0.6),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20.h),
                            DottedBorder(
                              color: AppColors.primaryappcolor,
                              radius: Radius.circular(10.r),
                              borderType: BorderType.RRect,
                              strokeWidth: 2,
                              child: Container(
                                height: 203.23.h,
                                width: Get.width,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 57.w,
                                      height: 57.h,
                                      child: const CircleAvatar(
                                        backgroundColor:
                                            AppColors.textfieldcolor,
                                        child: Icon(
                                          Icons.camera_alt,
                                          color: AppColors.primaryappcolor,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 16.h),
                                    CText(
                                      text:
                                          'Upload a photo proof of your Diploma',
                                      fontSize: 13.38,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.headingcolor
                                          .withOpacity(0.6),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 49.h),
                            PrimaryButton(
                                text: 'REGISTER NOW',
                                onTap: () {
                                  Get.to(() => MonthlyPayment());
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
