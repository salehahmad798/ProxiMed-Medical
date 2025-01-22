import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pharmacy_app/screens/clinics_hospitals/clinics_hospitals.dart';
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
  int _currentPage = 0;
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
              CustomSearchTextField(
                  hasPreffix: true,
                  preffixIcon: Icon(Icons.search),
                  controller: TextEditingController(),
                  hintText: 'Type here to search...',
                  keyboardType: TextInputType.name,
                  textcolor: AppColors.primarybackColor),
              Container(
                height: 200.h,
                child: PageView.builder(
                  itemCount: 4,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Image.asset(
                      AppImaes.pharmacypick,
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 3.0),
                    width: 8.0,
                    height: 8.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentPage == index
                          ? AppColors.primaryappcolor
                          : Colors.grey,
                    ),
                  );
                }),
              ),
              SizedBox(
                height: 12.h,
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
                    image: AppImaes.healthWorker,
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
                    image: AppImaes.clinics,
                    color: Colors.green.withOpacity(0.2),
                    onTap: () {
                      Get.to(()=>ClinicsHospitalsScreen());
                    },
                  ),
                  HomeCard(
                    title: 'Medical Labs',
                    image: AppImaes.laboratorire,
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
                    image: AppImaes.ambulance,
                    color: Colors.orange.withOpacity(0.2),
                    onTap: () {},
                  ),
                  HomeCard(
                    title: 'Veterinary',
                    image: AppImaes.veterinaryimg,
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
              CText(
                text: 'You have a support Question?',
                fontSize: 16.11.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.primarybackColor,
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomSearchTextField(
                controller: TextEditingController(),
                hintText: 'Tell Us what’s happening',
                keyboardType: TextInputType.name,
                textcolor: AppColors.primaryappcolor,
                hasSuffix: true,
                suffixIcon: Icon(
                  Icons.search,
                  color: AppColors.primarybackColor,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CText(
                    text: 'Frequently Asked Question ',
                    fontSize: 16.11.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primarybackColor,
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: CText(
                        text: 'Show more',
                        fontSize: 13.11.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.green,
                        textDecoration: TextDecoration.underline,
                      )),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
                  SizedBox(
                  height: 10.h,
                  ),
                  Container(
                  height: 200.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    
                    itemCount: 3,
                    itemBuilder: (context, index) {
                    if (index == 0) {
                      return Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: asked_question_card(
                        AppImaes.fileicon,
                        "How do I cancel the existing order?",
                        AppColors.lightblue,
                        () {},
                      ),
                      );
                    }else if (index == 1) {
                      return Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: asked_question_card(
                        AppImaes.usericon,
                        "How do I update my profile picture?",
                        AppColors.lightpurpal,
                        () {},
                      ),
                        );}
                     else {
                      return Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: asked_question_card(
                        AppImaes.usericon,
                        "How do I update my profile picture?",
                        AppColors.lightpurpal,
                        () {},
                      ),
                      );
                    }}
                  )
                  ),
                  
              
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget asked_question_card(
      String image, String title, Color, Function() mytap) {
    return GestureDetector(
      onTap: mytap,
      child: Container(
        width: 166.48.w,
        height: 184.71.h,
        padding: EdgeInsets.all(9),
        decoration: BoxDecoration(
          color: Color,
            borderRadius: BorderRadius.circular(
              8.29.r),
            ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            Container(
              width: 29.62.w,
              height: 29.62,
              decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(140.19.r)),
              child: Image.asset(image),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            SizedBox(
              width: 
              MediaQuery.of(context).size.width * 0.4,
              child: CText(
                text: title,
                fontSize: 16,
                maxLines: 3,
                fontWeight: FontWeight.w500,
                color: AppColors.primarybackColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
