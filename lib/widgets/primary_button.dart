import 'package:pharmacy_app/utils/app_colors.dart';
import 'package:pharmacy_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class PrimaryButton extends StatelessWidget {
  String text;
  double? height;
  double? width;
  double? textSize;
  double? radius;
  Color? color;
  Function() onTap;
  bool? iconEnable;

  PrimaryButton({
    super.key,
    required this.text,
    this.height,
    this.width,
    this.color,
    this.radius,
    this.textSize,
    required this.onTap,
    this.iconEnable = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? 327.w,
        height: height ?? 52.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: AppColors.greyColor.withOpacity(0.5),
                // blurRadius: 2,
                spreadRadius: 1,

                offset: Offset(
                  0,
                  2,
                ))
          ],
          color: color ?? AppColors.primaryappcolor,
          borderRadius: BorderRadius.circular(radius ?? 6),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CText(
              text: text,
              fontSize: textSize ?? 15.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.primarywhiteColor,
            ),
            iconEnable == false
                ? const SizedBox()
                : const Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.primarywhiteColor,
                        size: 18,
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class PrimaryButton2 extends StatelessWidget {
  String text;
  Function() onTap;
  bool? iconEnable;
  PrimaryButton2({
    super.key,
    required this.text,
    required this.onTap,
    this.iconEnable = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 388.w,
        height: 64.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          // border: Border.all(color: AppColors.primarybackColor),
          color: AppColors.primaryappcolor,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CText(
              text: text,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.primarywhiteColor,
            ),
            iconEnable == false
                ? const SizedBox()
                : const Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.primarywhiteColor,
                        size: 18,
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class PrimaryButton3 extends StatelessWidget {
  String text;
  Function() onTap;
  bool? iconEnable;
  PrimaryButton3({
    super.key,
    required this.text,
    required this.onTap,
    this.iconEnable = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 190.w,
        height: 46.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(style: BorderStyle.solid, width: 1.19),
          // color: AppColors.primarybackColor,
          borderRadius: BorderRadius.circular(
            8.r,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CText(
              text: text,
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.headingcolor,
            ),
            iconEnable == false
                ? const SizedBox()
                : const Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: AppColors.primarywhiteColor,
                        size: 18,
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class IntroButton extends StatelessWidget {
  Function() onPressed;

  IntroButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 100.w, top: 35.h),
      child: TextButton(
        onPressed: onPressed,
        child: Row(
          children: [
            CText(
              text: 'Next',
              fontSize: 16,
              color: AppColors.primarywhiteColor,
            ),
            const Icon(
              Icons.arrow_forward,
              color: AppColors.primarywhiteColor,
            )
          ],
        ),
      ),
    );
  }
}
