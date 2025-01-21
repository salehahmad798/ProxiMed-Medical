import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/utils/app_colors.dart';
import 'package:pharmacy_app/widgets/custom_text.dart';

class HomeCard extends StatelessWidget {
  final String title;
  final String image;
  final Color? color;
  Function() onTap;
   HomeCard({super.key, required this.title, required this.image, required this.color,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 166.48.w,
        height: 184.71.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26.29.r),
            border: Border.all(width: 1.1.w, color: AppColors.greyColor)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 87.62.w,
              height: 87.62,
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(140.19.r)),
              child: Image.asset(image),
            ),
            SizedBox(
              height: 10.h,
            ),
            CText(
              text: title,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: AppColors.primarybackColor,
            )
          ],
        ),
      ),
    );

  }
}