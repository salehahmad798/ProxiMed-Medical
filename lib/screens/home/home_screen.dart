import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pharmacy_app/screens/home/health_workers.dart';
import 'package:pharmacy_app/screens/home/home_card.dart';
import 'package:pharmacy_app/screens/home/veterinary_screen.dart';
import 'package:pharmacy_app/utils/app_colors.dart';
import 'package:pharmacy_app/utils/app_images.dart';
import 'package:pharmacy_app/widgets/custom_text.dart';
import 'package:pharmacy_app/widgets/custom_textfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leadingWidth: 60.w,
        leading: Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.menu,
                size: 30.w,
                color: AppColors.primaryappcolor,
              ),
            ),
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 20),
            width: 60.w,
            height: 60.h,
            child: CircleAvatar(
                backgroundColor: AppColors.textfieldcolor,
                child: Container(
                  child: Image.asset(AppImaes.profilepick),
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              CText(
                text: 'Welcome Back!',
                fontSize: 28.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.primarybackColor,
              ),
              CustomTextField(
                  hasPreffix: true,
                  preffixIcon: Icon(Icons.search),
                  controller: TextEditingController(),
                  hintText: 'Type here to search...',
                  keyboardType: TextInputType.name,
                  textcolor: AppColors.primarybackColor),
              Image.asset(
                AppImaes.pharmacypick,
                fit: BoxFit.cover,
              ),
              CText(
                text: 'Advertising',
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.primarybackColor,
              ),
              Container(
                width: 255.w,
                child: CText(
                  text:
                      'Enjoy your favorite items with a special discount. Offer valid till the end of the month.',
                  fontSize: 14.sp,
                  maxLines: 5,
                  fontWeight: FontWeight.w400,
                  alignText: TextAlign.center,
                  color: AppColors.headingcolor.withOpacity(0.5),
                ),
              ),
              SizedBox(
                height: 29.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeCard(
                    title: 'Health Workers',
                    image: AppImaes.healthworkers,
                    color: AppColors.primaryappcolor.withOpacity(0.2),
                    onTap: () {
                      Get.to(() => HealthWorkersScreen());
                    },
                  ),
                  HomeCard(
                    title: 'Pharmacies',
                    image: AppImaes.pharmacies,
                    color: Colors.orange.withOpacity(0.2),
                    onTap: () {},
                  ),
                  // home_screen_card(AppImaes.healthworkers, "Health Workers",
                  //     AppColors.primaryappcolor.withOpacity(0.2),

                  //     ),
                  // home_screen_card(AppImaes.pharmacies, "Pharmacies",
                  //     Colors.orange.withOpacity(0.2))
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeCard(
                    title: 'Clinics & Hospitals',
                    image: AppImaes.clinicshospitals,
                    color: Colors.green.withOpacity(0.2),
                    onTap: () {},
                  ),
                  HomeCard(
                    title: 'Medical Labs',
                    image: AppImaes.medicallabs,
                    color: Colors.purple.withOpacity(0.2),
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeCard(
                    title: 'Assisted Transport',
                    image: AppImaes.assistedtransport,
                    color: Colors.orange.withOpacity(0.2),
                    onTap: () {},
                  ),
                  HomeCard(
                    title: 'Veterinary',
                    image: AppImaes.veterinary,
                    color: Colors.purple.withOpacity(0.2),
                    onTap: () {
                      Get.to(VeterinaryScreen());
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget home_screen_card(String image, String title, Color,Function() mytap) {
  //   return
  //   GestureDetector(
  //     onTap: mytap,
  //     child: Container(
  //       width: 166.48.w,
  //       height: 184.71.h,
  //       decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(26.29.r),
  //           border: Border.all(width: 1.1.w, color: AppColors.greyColor)),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Container(
  //             width: 87.62.w,
  //             height: 87.62,
  //             decoration: BoxDecoration(
  //                 color: Color, borderRadius: BorderRadius.circular(140.19.r)),
  //             child: Image.asset(image),
  //           ),
  //           SizedBox(
  //             height: 10.h,
  //           ),
  //           CText(
  //             text: title,
  //             fontSize: 16,
  //             fontWeight: FontWeight.w500,
  //             color: AppColors.primarybackColor,
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
