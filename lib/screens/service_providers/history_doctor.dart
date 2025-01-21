import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            // bottom: MediaQuery.of(context).size.height * 0.1,
            // left: MediaQuery.of(context).size.width * 0.05,
          
            // right: 0,

            child: Image.asset(
              AppImaes.homepick,
          width: 239.w,
          height: 257.h,

            ),
          ),
          Positioned(
            top: 20.h, // Adjust the position as needed
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
