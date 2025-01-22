  import 'package:flutter/material.dart';
  import 'package:flutter_screenutil/flutter_screenutil.dart';
  import 'package:pharmacy_app/utils/app_colors.dart';
  import 'package:pharmacy_app/utils/app_images.dart';
  import 'package:pharmacy_app/widgets/custom_text.dart';

  class ClinicCard extends StatelessWidget {
    final bool showMail;
    final bool showPhoneNumber;
    final bool showCalendar;
final String image;
final String clicniLogo;
Function()? onTap;
     ClinicCard({
      Key? key,
      this.showMail = false,
      this.showPhoneNumber = false,
      this.showCalendar = false,
      required this.image,
      required this.clicniLogo,
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
                  width: 173.w,
                  height: 173.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    image: DecorationImage(
                      image: AssetImage(
                      image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(clicniLogo, height: 41.h),
                    SizedBox(height: 4.h),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.orange, size: 16.sp),
                        CText(
                          text: "4.3",
                          fontSize: 11.sp,
                          color: AppColors.primarybackColor,
                          fontWeight: FontWeight.w600,
                        ),
                        SizedBox(width: 4.w),
                        CText(
                          text: "2,589 Google reviews",
                          color: AppColors.primarybackColor,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                     if (showMail) ...[
                      SizedBox(height: 8.h),
                      Row(
                        children: [
                          Icon(Icons.mail, color: Colors.grey, size: 16.sp),
                          SizedBox(width: 4.w),
                          CText(
                            text: "info@medlife.com",
                            color: AppColors.primarybackColor,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ],
                    if (showPhoneNumber) ...[
                      SizedBox(height: 8.h),
                      Row(
                        children: [
                          Icon(Icons.phone, color: Colors.grey, size: 16.sp),
                          SizedBox(width: 4.w),
                          CText(
                            text: "+123 456 7890",
                            color: AppColors.primarybackColor,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ],
                    if (showCalendar) ...[
                      SizedBox(height: 8.h),
                      Row(
                        children: [
                          Icon(Icons.calendar_today, color: Colors.grey, size: 16.sp),
                          SizedBox(width: 4.w),
                          CText(
                            text: "Mon - Fri, 9 AM - 6 PM",
                            color: AppColors.primarybackColor,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                    ],
                 
                    SizedBox(height: 8.h),
                    CText(
                      text:
                          "At MedLife, we combine integrated medical services with professionalism, care, and responsibility.",
                      maxLines: 4,
                      color: AppColors.primarybackColor,
                      fontSize: 16,
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
