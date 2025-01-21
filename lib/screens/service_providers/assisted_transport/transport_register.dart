import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pharmacy_app/screens/service_providers/assisted_transport/monthly_payment.dart';
import 'package:pharmacy_app/screens/map/start_map.dart';
import 'package:pharmacy_app/screens/service_providers/profile.dart';
import 'package:pharmacy_app/utils/app_colors.dart';
import 'package:pharmacy_app/utils/app_images.dart';
import 'package:pharmacy_app/widgets/custom_text.dart';
import 'package:pharmacy_app/widgets/custom_textfield.dart';
import 'package:pharmacy_app/widgets/primary_button.dart';

class TransportRegisterScreen extends StatefulWidget {
  const TransportRegisterScreen({super.key});

  @override
  State<TransportRegisterScreen> createState() =>
      _TransportRegisterScreenState();
}

class _TransportRegisterScreenState extends State<TransportRegisterScreen> {
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
                    text: 'Transport Register',
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                  CText(
                    text: 'Please register your Transport',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                    height:
                        Get.height * 0.3 - 20), // Adjust the height as needed
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
                              text: 'Transport Type',
                              color: AppColors.primarybackColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                            //Choose vehicle type
                            CustomTextField(
                              controller: TextEditingController(),
                              hintText: 'Choose vehicle type',
                              keyboardType: TextInputType.name,
                              textcolor: AppColors.headingcolor,
                              hasSuffix: true,
                              suffixIcon: Icon(
                                Icons.arrow_drop_down_sharp,
                                size: 40,
                              ),
                            ),
                            CText(
                              text: 'Year',
                              color: AppColors.primarybackColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),

                            CustomTextField(
                              controller: TextEditingController(),
                              hintText: '',
                              keyboardType: TextInputType.name,
                              textcolor: AppColors.headingcolor,
                            ),
                            CText(
                              text: 'Brand',
                              color: AppColors.primarybackColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),

                            CustomTextField(
                              controller: TextEditingController(),
                              hintText: '',
                              keyboardType: TextInputType.name,
                              textcolor: AppColors.headingcolor,
                            ),
                            CText(
                              text: 'Model',
                              color: AppColors.primarybackColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),

                            CustomTextField(
                              controller: TextEditingController(),
                              hintText: '',
                              keyboardType: TextInputType.name,
                              textcolor: AppColors.headingcolor,
                            ),
                            CText(
                              text: 'Color',
                              color: AppColors.primarybackColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),

                            CustomTextField(
                              controller: TextEditingController(),
                              hintText: '',
                              keyboardType: TextInputType.name,
                              textcolor: AppColors.headingcolor,
                            ),
                            CText(
                              text: 'License Plate/Tag Number',
                              color: AppColors.primarybackColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),

                            CustomTextField(
                              controller: TextEditingController(),
                              hintText: '',
                              keyboardType: TextInputType.name,
                              textcolor: AppColors.headingcolor,
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
                                  // Get.to(() => ProfileScreen());
                                  Get.to(() => TransportMonthlyPayment());
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
              left: 0,
              right: 0,
              top: 160.h,
              child: Container(
                width: 91.w,
                height: 91.h,
                child: const CircleAvatar(
                  backgroundColor: AppColors.textfieldcolor,
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
