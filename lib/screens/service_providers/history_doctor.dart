import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pharmacy_app/utils/app_colors.dart';
import 'package:pharmacy_app/utils/app_images.dart';
import 'package:pharmacy_app/widgets/custom_appbar.dart';
import 'package:pharmacy_app/widgets/custom_text.dart';

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBar2(text: ''),
      body: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height * 0.55,

// top:Get.height * 0.55,
            child: Image.asset(
              AppImaes.homepick,
              width: 239.w,
              height: 257.h,
            ),
          ),
          Positioned(
            top: 20.h,
            left: 20.w,
            child: CText(
              text: 'Health Workers',
              fontSize: 28.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.primarybackColor,
            ),
          ),
        ],
      ),
    );
  }
}
