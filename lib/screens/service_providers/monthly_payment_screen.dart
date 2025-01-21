
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pharmacy_app/screens/home/home_screen.dart';
import 'package:pharmacy_app/screens/service_providers/profile.dart';
import 'package:pharmacy_app/utils/app_colors.dart';
import 'package:pharmacy_app/utils/app_images.dart';
import 'package:pharmacy_app/widgets/custom_appbar.dart';
import 'package:pharmacy_app/widgets/custom_text.dart';
import 'package:pharmacy_app/widgets/primary_button.dart';

class MonthlyPayment extends StatefulWidget {
  const MonthlyPayment({super.key});

  @override
  State<MonthlyPayment> createState() => _MonthlyPaymentState();
}

class _MonthlyPaymentState extends State<MonthlyPayment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primarybackColor,
        body: Stack(
          children: [
            // Background Image Container
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
                children: [Image.asset(AppImaes.paybill)],
              ),
            ),
            // Main Content Column
            Container(
              margin: EdgeInsets.only(top: 386.h),
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
                          text:
                              'Pay your monthly subscription via orange money or wave',
                          color: AppColors.primaryappcolor,
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        width: 358.w,
                        child: CText(
                          maxLines: 3,
                          alignText: TextAlign.center,
                          text:
                              'Every 5th of the month if payment is not made the service provider will no longer be visible on the platform.',
                          color: AppColors.headingcolor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 80.h),
                      PrimaryButton(
                        text: 'PAY NOW',
                        onTap: () {
                          print('Button pressed'); 
                          Get.to(() => ProfileScreen());
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Custom AppBar
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: CustomAppBar(text: ''),
            ),
          ],
        ),
      ),
    );
  }
}
