import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pharmacy_app/screens/clinics_hospitals/clincis_details.dart';
import 'package:pharmacy_app/utils/app_colors.dart';
import 'package:pharmacy_app/utils/app_images.dart';
import 'package:pharmacy_app/widgets/clicnic_card.dart';
import 'package:pharmacy_app/widgets/custom_text.dart';
import 'package:pharmacy_app/widgets/custom_textfield.dart';

class ClinicsHospitalsScreen extends StatelessWidget {
  const ClinicsHospitalsScreen({Key? key}) : super(key: key);

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
              // Get.back();
              // openDrawer();
            },
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.boxcolor.withOpacity(0.6),
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
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSearchTextField(
              controller: TextEditingController(),
              hintText: 'Search',
              keyboardType: TextInputType.name,
              textcolor: AppColors.primaryappcolor,
              hasPreffix: true,
              preffixIcon: Icon(
                Icons.search,
                size: 20,
              ),
            ),

            SizedBox(height: 20.h),

            // ===========  carousel 0r slider on later using the api============
            Container(
                width: 364.w,
                height: 179.w,
                child: Image.asset(
                  AppImaes.carouselClicins,
                  fit: BoxFit.cover,
                )),
            // Container(
            //   height: 150.h,
            //   decoration: BoxDecoration(
            //     color: Colors.blue[100],
            //     borderRadius: BorderRadius.circular(12.r),
            //   ),
            //   padding: EdgeInsets.all(12.w),
            //   child: Row(
            //     children: [
            //       Expanded(
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           children: [
            //             const Text(
            //               "Medical Checks",
            //               style: TextStyle(
            //                 color: Colors.blue,
            //                 fontWeight: FontWeight.bold,
            //                 fontSize: 18,
            //               ),
            //             ),
            //             const Text(
            //               "Check your health condition regularly to minimize the incidence of disease in the future",
            //               style: TextStyle(color: Colors.black54),
            //             ),
            //             SizedBox(height: 8.h),
            //             ElevatedButton(
            //               onPressed: () {},
            //               style: ElevatedButton.styleFrom(
            //                 backgroundColor: Colors.blue,
            //                 shape: RoundedRectangleBorder(
            //                   borderRadius: BorderRadius.circular(8.r),
            //                 ),
            //               ),
            //               child: const Text("Check now"),
            //             ),
            //           ],
            //         ),
            //       ),
            //       Image.asset(
            //         "assets/doctor.png", // Replace with your image path
            //         fit: BoxFit.cover,
            //         height: 100.h,
            //       ),
            //     ],
            //   ),
            // ),

            SizedBox(height: 20.h),

            // Specialty Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CText(
                  text: "Speciality",
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp,
                  color: AppColors.primarybackColor,
                ),
                GestureDetector(
                  onTap: () {},
                  child: CText(
                    text: "See All",
                    color: AppColors.primaryappcolor,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.30,
              child: GridView.count(
                shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),

                crossAxisCount: 4,
                crossAxisSpacing: 12.w,
                mainAxisSpacing: 12.h,
                childAspectRatio: 0.8,
                children: [
                  _buildSpecialtyItem(AppImaes.visiabilty, "Ophthalmology"),
                  _buildSpecialtyItem(AppImaes.touch, "Dentist"),
                  _buildSpecialtyItem(AppImaes.stomach, "Gastroenterology"),
                  _buildSpecialtyItem(AppImaes.brain, "Neurology"),
                  _buildSpecialtyItem(AppImaes.born, "Radiography"),
                  _buildSpecialtyItem(AppImaes.nutrition, "Nutrition"),
                  _buildSpecialtyItem(AppImaes.dermatology, "Dermatology"),
                ],
              ),
            ),
            SizedBox(height: 20.h),

            // Clinics List
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CText(
                    text: "The best clinics in the city",
                    fontWeight: FontWeight.w600,
                    color: AppColors.primarybackColor,
                    fontSize: 18.sp),
                GestureDetector(
                  onTap: () {},
                  child: CText(
                      text: "View all",
                      color: AppColors.headingcolor,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp),
                ),
              ],
            ),

            SizedBox(height: 12.h),
            ClinicCard(
              onTap: () {
                Get.to(() => ClinicDetailsScreen());
              },
              image: AppImaes.bestClicins,
              clicniLogo: AppImaes.medlife,
            ),
            SizedBox(height: 12.h),
            ClinicCard(
              onTap: () {
                Get.to(() => ClinicDetailsScreen());
              },
              image: AppImaes.bestClicins,
              clicniLogo: AppImaes.medlife,
            ),
            SizedBox(height: 20.h),

            // Nearest Clinics near you
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CText(
                    text: "Nearest Clinics",
                    fontWeight: FontWeight.w600,
                    color: AppColors.primarybackColor,
                    fontSize: 18.sp),
                GestureDetector(
                  onTap: () {},
                  child: CText(
                      text: "View all",
                      color: AppColors.headingcolor,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            ClinicCard(
              image: AppImaes.bestClicins,
              clicniLogo: AppImaes.medlife,
              showMail: true,
              showPhoneNumber: true,
              showCalendar: true,
              onTap: () {
                Get.to(() => ClinicDetailsScreen());
              },
            ),
            SizedBox(height: 20.h),
            ClinicCard(
              onTap: () {
                Get.to(() => ClinicDetailsScreen());
              },
              image: AppImaes.bestClicins,
              clicniLogo: AppImaes.medlife,
              showMail: true,
              showPhoneNumber: true,
              showCalendar: true,
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Widget _buildSpecialtyItem(String image, String title) {
    return Padding(
      padding: EdgeInsets.only(right: 12.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: Colors.blue[100],
            child: Image.asset(
              image,
              height: 24,
              width: 24,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            title,
            style: TextStyle(fontSize: 12.sp, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
