import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pharmacy_app/screens/clinics_hospitals/video_player.dart';
import 'package:pharmacy_app/utils/app_colors.dart';
import 'package:pharmacy_app/utils/app_images.dart';
import 'package:pharmacy_app/widgets/custom_appbar.dart';
import 'package:pharmacy_app/widgets/custom_text.dart';

class ClinicDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBar(text: 'MEDCOVER INTEGRATED CLINIC'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
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
            //       Container(
            //         color: Colors.blue,
            //         padding: EdgeInsets.all(16),
            //         child: Row(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Image.asset(
            //  AppImaes.medicover,
            //               height: 60,
            //               width: 60,
            //             ),
            //             SizedBox(width: 16),
            //             Expanded(
            //               child: Column(
            //                 crossAxisAlignment: CrossAxisAlignment.start,
            //                 children: [
            //                   Text(
            //                     'MEDICOVER INTEGRATED CLINIC',
            //                     style: TextStyle(
            //                       color: Colors.white,
            //                       fontSize: 18,
            //                       fontWeight: FontWeight.bold,
            //                     ),
            //                   ),
            //                   SizedBox(height: 8),
            //                   Text(
            //                     '10 Doctors · 22 Years in Medical Care',
            //                     style: TextStyle(color: Colors.white70, fontSize: 14),
            //                   ),
            //                   SizedBox(height: 4),
            //                   Text(
            //                     'Verified · Premium Healthcare',
            //                     style: TextStyle(color: Colors.white70, fontSize: 14),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
        
            // Card(
            //   color: AppColors.primarywhiteColor,
            //   shadowColor: Colors.grey.withOpacity(0.3),
            //   child: Container(
            //     width: 100.w,
            //     height: 40.h,
            //     decoration: BoxDecoration(
            //       color: AppColors.primarywhiteColor,
            //       borderRadius: BorderRadius.circular(4.r),
            //     ),
            //     child: Row(children: [
            //       Icon(Icons.directions, color: Colors.orange, size: 16.sp),
            //       SizedBox(width: 4.w),
            //       CText(
            //         text: 'Direction',
            //         color: AppColors.primarybackColor,
            //         fontSize: 11.sp,
            //         fontWeight: FontWeight.w600,
            //       ),
            //     ]),
            //   ),
            // ),
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
        
        // add video player
        
        Image.asset(AppImaes.videoPlayer, fit: BoxFit.cover), 
        
        // Usage in the body
        VideoPlayerWidget(videoUrl: 'https://www.youtube.com/shorts/F7WT7q9Plyc'),
        
            // Description Section
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Pharmacies are healthcare professionals responsible for ensuring medicines are...',
                    style: TextStyle(fontSize: 14),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('View'),
                  ),
                ],
              ),
            ),
        
            // Address Section
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Address',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Ship to any address, 38PP 45 street, 4 second district, Goa, Egypt country',
                  ),
                ],
              ),
            ),
        
            // Dentists Section
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Dentists',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text('View all'),
                      ),
                    ],
                  ),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3, // Example: 3 dentists
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                              'assets/doctor.png'), // Replace with your asset
                        ),
                        title: Text('Dr. Albert Johnson'),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Dentist'),
                            Text('9:00 AM - 7:00 PM'),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
        
            // Images Section
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Images',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
         ]),),
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
            
