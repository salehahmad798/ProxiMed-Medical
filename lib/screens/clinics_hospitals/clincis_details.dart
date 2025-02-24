import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pharmacy_app/screens/clinics_hospitals/video_player.dart';
import 'package:pharmacy_app/utils/app_colors.dart';
import 'package:pharmacy_app/utils/app_images.dart';
import 'package:pharmacy_app/widgets/custom_appbar.dart';
import 'package:pharmacy_app/widgets/custom_text.dart';
import 'package:pharmacy_app/widgets/doctor_details_card.dart';

class ClinicDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBar(text: 'MEDCOVER INTEGRATED CLINIC'),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // Header Section
          Stack(
            children: [
              Image.asset(
                AppImaes.medicover,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Positioned(
                  top: 14.h,
                  right: 14.w,
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.favorite_border,
                          color: AppColors.primarybackColor))),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.check_circle_outline,
                          size: 16.w, color: AppColors.darkgrey),
                      SizedBox(
                        width: 4.w,
                      ),
                      CText(
                        text: '30min to reach your area',
                        color: AppColors.darkgrey,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.location_pin,
                              size: 16.w, color: AppColors.darkgrey),
                          SizedBox(
                            width: 4.w,
                          ),
                          CText(
                            text: '500M from you',
                            color: AppColors.darkgrey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      Row(
                        children: [
                          Icon(Icons.check_circle_outline,
                              size: 16.w, color: AppColors.darkgrey),
                          SizedBox(
                            width: 4.w,
                          ),
                          CText(
                            text: '24 hours open',
                            color: AppColors.darkgrey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      Row(
                        children: [
                          Icon(Icons.check_circle_outline,
                              size: 16.w, color: AppColors.darkgrey),
                          SizedBox(
                            width: 4.w,
                          ),
                          CText(
                            text: 'Available',
                            color: AppColors.darkgrey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 10.h,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.check_circle_outline,
                              size: 16.w, color: AppColors.darkgrey),
                          SizedBox(
                            width: 4.w,
                          ),
                          CText(
                            text: 'Verified',
                            color: AppColors.darkgrey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      Row(
                        children: [
                          Icon(Icons.check_circle_outline,
                              size: 16.w, color: AppColors.darkgrey),
                          SizedBox(
                            width: 4.w,
                          ),
                          CText(
                            text: 'Instant replay',
                            color: AppColors.darkgrey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      Row(
                        children: [
                          Icon(Icons.check_circle_outline,
                              size: 16.w, color: AppColors.darkgrey),
                          SizedBox(
                            width: 4.w,
                          ),
                          CText(
                            text: 'All categories',
                            color: AppColors.darkgrey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.01,
                  ),
                  child: SizedBox(
                    height: 40.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        IconTextRow(icon: Icons.directions, text: 'Direction'),
                        SizedBox(width: 10.w),
                        IconTextRow(icon: Icons.messenger, text: 'Chat'),
                        SizedBox(width: 10.w),
                        IconTextRow(icon: Icons.call, text: 'Call'),
                        SizedBox(width: 10.w),
                        IconTextRow(icon: Icons.share, text: 'Share'),
                      ],
                    ),
                  ),
                ),
                Image.asset(AppImaes.videoPlayer),
                // VideoPlayerWidget(
                //   videoUrl: 'https://www.youtube.com/shorts/F7WT7q9Plyc',
                // ),

                // Description Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CText(
                        text: 'Description',
                        color: AppColors.primarybackColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700),
                    GestureDetector(
                      onTap: () {},
                      child: CText(
                        text: 'View',
                        fontSize: 18.sp,
                        color: AppColors.primaryappcolor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                CText(
                  text:
                      'Pharmacies are healthcare professionals responsible for ensuring medicines are...',
                  fontSize: 16.sp,
                  maxLines: 3,
                  color: AppColors.darkgrey,
                  fontWeight: FontWeight.w500,
                ),
                // Address Section
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CText(
                        text: 'Address',
                        color: AppColors.primarybackColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700),
                  ],
                ),

                SizedBox(height: 10.h),
                CText(
                  text:
                      'Ship to any address, 38PP 45 street, 4 second district, Goa, Egypt country',
                  fontSize: 16.sp,
                  maxLines: 3,
                  lineHeight: 2,
                  color: AppColors.darkgrey,
                  fontWeight: FontWeight.w500,
                ),

                // Dentists Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CText(
                        text: 'Dentists',
                        color: AppColors.darkgrey,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500),
                    TextButton(
                      onPressed: () {},
                      child: CText(
                        text: 'View all',
                        fontSize: 16.sp,
                        color: AppColors.listtextcolor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3, // Example: 3 dentists
                  itemBuilder: (context, index) {
                    return DoctorDetailCard(
                      doctorName: 'Dr. Albert Johnson',
                      doctorType: 'Dentist',
                      calendar: 'Tue, Apr 18',
                      time: '9:00 AM - 7:00 PM',
                      svgImage: AppImaes.doctorImg,
                    );

                  },
                ),

                // Images Section
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Images',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5, // Example: 5 images
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(right: 8),
                              child: Image.asset(
                                'assets/clinic_image.png', // Replace with your image asset
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),

                // Reviews Section
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Reviews',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 3, // Example: 3 reviews
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage(
                                  'assets/user.png'), // Replace with your asset
                            ),
                            title: Text('John Doe'),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Great service, would recommend!'),
                                Row(
                                  children: List.generate(5, (starIndex) {
                                    return Icon(
                                      Icons.star,
                                      color: starIndex < 4
                                          ? Colors.orange
                                          : Colors.grey,
                                      size: 16,
                                    );
                                  }),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class IconTextRow extends StatelessWidget {
  final IconData icon;
  final String text;

  IconTextRow({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.primarywhiteColor,
      shadowColor: Colors.grey.withOpacity(0.3),
      child: Container(
        padding: EdgeInsets.all(2.w),
        child: Row(
          children: [
            Icon(icon, size: 16.w, color: Colors.amber),
            SizedBox(width: 4.w),
            CText(
              text: text,
              color: AppColors.darkgrey,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
      ),
    );
  }
}
