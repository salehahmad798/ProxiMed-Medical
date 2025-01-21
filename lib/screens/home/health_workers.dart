import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pharmacy_app/screens/home/doctor_screen.dart';
import 'package:pharmacy_app/screens/home/home_card.dart';
import 'package:pharmacy_app/screens/home/midwife_screen.dart';
import 'package:pharmacy_app/screens/home/nurse_screen.dart';
import 'package:pharmacy_app/screens/home/physiotherapist_masseur.dart';
import 'package:pharmacy_app/utils/app_colors.dart';
import 'package:pharmacy_app/utils/app_images.dart';
import 'package:pharmacy_app/widgets/custom_appbar.dart';
import 'package:pharmacy_app/widgets/custom_text.dart';
import 'package:pharmacy_app/widgets/custom_textfield.dart';

class HealthWorkersScreen extends StatefulWidget {
  const HealthWorkersScreen({super.key});

  @override
  State<HealthWorkersScreen> createState() => _HealthWorkersScreenState();
}

class _HealthWorkersScreenState extends State<HealthWorkersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBar2(text: ''),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CText(
                text: 'Health Workers',
                fontSize: 28.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.primarybackColor,
              ),
              SizedBox(
                height: 29.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HomeCard(
                    title: 'Doctor',
                    image: AppImaes.healthworkers,
                    color: AppColors.primaryappcolor.withOpacity(0.2),
                    onTap: () {
                      Get.to(() => DoctorScreen());
                    },
                  ),
                  HomeCard(
                    title: 'Nurse',
                    image: AppImaes.nursepick,
                    color: Colors.orange.withOpacity(0.2),
                    onTap: () {
                      Get.to(() => NurseScreen());
                    },
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
                    title: 'Midwife',
                    image: AppImaes.midwife,
                    color: Colors.green.withOpacity(0.2),
                    onTap: () {
                      Get.to(() => MidwifeScreen());
                    },
                  ),
                  HomeCard(
                    title: 'Physiotherapist',
                    image: AppImaes.physiotherapist,
                    color: Colors.purple.withOpacity(0.2),
                    onTap: () {
                      Get.to(() => PhysiotherapistMasseur());
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Container(
                child: Image.asset(AppImaes.homepick),
              )
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     HomeCard(
              //       title: 'Assisted Transport',
              //       image: AppImaes.assistedtransport,
              //       color: Colors.orange.withOpacity(0.2),
              //       onTap: () {},
              //     ),
              //     HomeCard(
              //       title: 'Veterinary',
              //       image: AppImaes.veterinary,
              //       color: Colors.purple.withOpacity(0.2),
              //       onTap: () {},
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 18.h,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
