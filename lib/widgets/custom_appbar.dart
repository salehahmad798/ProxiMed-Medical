import 'package:pharmacy_app/utils/app_colors.dart';
import 'package:pharmacy_app/utils/app_images.dart';
import 'package:pharmacy_app/widgets/custom_text.dart';
import 'package:pharmacy_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final bool leadingIcon;

  const CustomAppBar({
    super.key,
    required this.text,
    this.leadingIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(120.h),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: AppBar(
          backgroundColor: Colors.transparent,
          // shadowColor: Colors.transparent,
          leadingWidth: 26.w,
          leading: leadingIcon
              ? GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primarywhiteColor),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 6.0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: AppColors.primarybackColor,
                          size: 15.w,
                        ),
                      ),
                    ),
                  ),
                )
              : const SizedBox(),
          title: Text(
            text,
            style: TextStyle(
              fontSize: 24.sp,
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontFamily: "Poppins",
            ),
          ),
          centerTitle: true,
          elevation: 0,
          actions: const [],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(81.h);
}

class CustomAppBar2 extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final bool leadingIcon;

  const CustomAppBar2({
    super.key,
    required this.text,
    this.leadingIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(120.h),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: AppBar(
          backgroundColor: Colors.transparent,
          // shadowColor: Colors.transparent,
          leadingWidth: 30.w,
          leading: leadingIcon
              ? GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.greyColor.withOpacity(0.2)),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back,
                        color: AppColors.primarybackColor,
                        size: 20.w,
                      ),
                    ),
                  ),
                )
              : const SizedBox(),
          title: Text(
            text,
            style: TextStyle(
              fontSize: 24.sp,
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontFamily: "Poppins",
            ),
          ),
          centerTitle: true,
          elevation: 0,
          actions: const [],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(81.h);
}
