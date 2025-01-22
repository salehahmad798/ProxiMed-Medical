import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacy_app/utils/app_colors.dart';
import 'package:pharmacy_app/utils/app_images.dart';
import 'package:pharmacy_app/widgets/custom_text.dart';

class DoctorDetailCard extends StatelessWidget {
  final String doctorName;
  final String doctorType;
  final String calendar;
  final String time;
  String flag;
  final String svgImage;
  Function()? onTap;

  DoctorDetailCard({
    Key? key,
    required this.doctorName,
    required this.doctorType,
    required this.calendar,
    required this.time,
    this.flag = '',
    required this.svgImage,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 8,
              spreadRadius: 1,
            ),
          ],
          borderRadius: BorderRadius.circular(21.r),
        ),
        child: Row(
          children: [
            Container(
              width: 100.w,
              height: 100.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: SvgPicture.asset(
                svgImage,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CText(
                        text: doctorName,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.headingcolor,
                      ),
                      Container(
                        width: 16.w,
                        height: 13.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.r),
                        ),
                        child: SvgPicture.asset(
                          flag.isNotEmpty ? flag : AppImaes.usFlag,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.h),
                  Row(
                    children: [
                      Container(
                        width: 30.w,
                        height: 30.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.r),
                        ),
                        child: SvgPicture.asset(
                          AppImaes.plusIcon,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 5.w,),
                      CText(
                        text: doctorType,
                        fontSize: 14.sp,
                        color: AppColors.headingcolor,
                      ),
                      
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      Icon(Icons.calendar_today,
                          size: 16.sp, color: Colors.grey),
                      SizedBox(width: 4.w),
                      CText(
                        text: calendar,
                        fontSize: 12.sp,
                        color: AppColors.headingcolor,
                      ),
                    ],
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    children: [
                      Icon(Icons.access_time, size: 16.sp, color: Colors.grey),
                      SizedBox(width: 4.w),
                      CText(
                        text: time,
                        fontSize: 12.sp,
                        color: AppColors.headingcolor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
