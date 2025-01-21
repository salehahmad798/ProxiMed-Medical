import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:pharmacy_app/screens/assisted_transport/transport_register.dart';
import 'package:pharmacy_app/screens/map/start_map.dart';
import 'package:pharmacy_app/utils/app_colors.dart';
import 'package:pharmacy_app/utils/app_images.dart';
import 'package:pharmacy_app/widgets/custom_appbar.dart';
import 'package:pharmacy_app/widgets/custom_text.dart';
import 'package:pharmacy_app/widgets/primary_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _switchValue = true;
  bool textside = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primarybackColor,
        // appBar: CustomAppBar(text: ''),
        body: Stack(
          children: [
            Container(
              width: Get.width,
              height: Get.height * 0.5,
              decoration: const BoxDecoration(
                color: AppColors.primarybackColor,
                image: DecorationImage(
                  image: AssetImage(
                    AppImaes.bgasset,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(height: 100.h), // Adjust the height as needed
                Expanded(
                  child: Container(
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: AppColors.primarywhiteColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24.r),
                        topRight: Radius.circular(24.r),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.0.w, vertical: 20.h),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 60.h,
                            ),
                            CText(
                              alignText: TextAlign.center,
                              text: 'Noura Al Nayadi',
                              color: AppColors.headingcolor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                            CText(
                              alignText: TextAlign.center,
                              text: 'Doctor',
                              color: AppColors.headingcolor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            SizedBox(
                              height: 23.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CText(
                                  alignText: TextAlign.center,
                                  text: 'Description of Experience',
                                  color: AppColors.headingcolor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            ),
                            Container(
                              width: 333.w,
                              child: CText(
                                maxLines: 5,
                                alignText: TextAlign.start,
                                text:
                                    'Lorem ipsum, Lorem ipsum, Lorem ipsum, Lorem ipsumLorem ipsum, Lorem ipsum, Lorem ipsum, Lorem ipsumLorem ipsum, Lorem ipsum, Lorem ipsum, Lorem ipsumLorem ipsum, Lorem ipsum, Lorem ipsum, Lorem ipsum',
                                color: AppColors.headingcolor,
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CText(
                                  alignText: TextAlign.center,
                                  text: 'Diploma',
                                  color: AppColors.headingcolor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.book_online,
                                  color: Colors.green,
                                ),
                                CText(
                                  alignText: TextAlign.center,
                                  text: 'Diploma of Doctor',
                                  color: Colors.green,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ],
                            ),
                            SizedBox(height: 249.h),
                            PrimaryButton(
                                text: ' EDIT',
                                onTap: () {
                                  Get.to(() => StartScreen());
                                  // Get.to(() => TransportRegisterScreen());
                                }),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              left: 140.w,
              right: 0.w,
              top: 60.h,
              child: Stack(
                children: [
                  Container(
                    width: 91.w,
                    height: 91.h,
                    child: CircleAvatar(
                        backgroundColor: AppColors.textfieldcolor,
                        child: Container(
                          child: Image.asset(AppImaes.profilepick),
                        )),
                  ),
                  Positioned(
                    top: 50.h,
                    left: 60.w,
                    child: Container(
                      width: 40.w,
                      height: 40.h,
                      child: CircleAvatar(
                          backgroundColor: AppColors.primaryappcolor,
                          child: Container(child: Icon(Icons.edit,color: AppColors.primarywhiteColor,))),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 100.h,
              right: 24.w,
              child: Row(
              children: [
                CupertinoSwitch(
                thumbColor: AppColors.primaryappcolor,
                activeColor: Colors.black,
                value: _switchValue,
                onChanged: (value) {
                setState(() {
                _switchValue = value;
                });
                },
                ),
              ],
              ),
            ),

            Positioned(top: 0, left: 0, right: 0, child: CustomAppBar(text: ''))
          ],
        ),
      ),
    );
    ;
  }
}
