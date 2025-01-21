import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/screens/home/home_card.dart';
import 'package:pharmacy_app/utils/app_colors.dart';
import 'package:pharmacy_app/utils/app_images.dart';
import 'package:pharmacy_app/widgets/custom_appbar.dart';
import 'package:pharmacy_app/widgets/custom_text.dart';
import 'package:pharmacy_app/widgets/custom_textfield.dart';

class MidwifeScreen extends StatefulWidget {
  const MidwifeScreen({super.key});

  @override
  State<MidwifeScreen> createState() => _MidwifeScreenState();
}

class _MidwifeScreenState extends State<MidwifeScreen> {
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
                text: 'Midwife',
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
                    title: 'Teleconsultation',
                    image: AppImaes.healthworkers,
                    color: AppColors.primaryappcolor.withOpacity(0.2),
                    onTap: () {},
                  ),
                  HomeCard(
                    title: 'Home consultation',
                    image: AppImaes.nursepick,
                    color: Colors.orange.withOpacity(0.2),
                    onTap: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              HomeCard(
                title: 'Obstetric care',
                image: AppImaes.nursepick,
                color: Colors.orange.withOpacity(0.2),
                onTap: () {},
              ),
              //Ultrasound
              SizedBox(
                height: 200.h,
              ),
              Container(
                child: Image.asset(AppImaes.homepick),
              )
            ],
          ),
        ),
      ),
    );
  }
}
