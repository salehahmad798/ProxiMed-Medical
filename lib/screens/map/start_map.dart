import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pharmacy_app/screens/service_providers/assisted_transport/transport_register.dart';
import 'package:pharmacy_app/screens/home/home_screen.dart';
import 'package:pharmacy_app/screens/profile/profile_screen.dart';
import 'package:pharmacy_app/screens/service_providers/edit_profile.dart';
import 'package:pharmacy_app/screens/service_providers/history_doctor.dart';
import 'package:pharmacy_app/screens/service_providers/profile.dart';

import 'package:pharmacy_app/utils/app_colors.dart';
import 'package:pharmacy_app/utils/app_images.dart';
import 'package:pharmacy_app/widgets/custom_appbar.dart';
import 'package:pharmacy_app/widgets/custom_text.dart';
import 'package:pharmacy_app/widgets/primary_button.dart';
import 'package:snapping_sheet_2/snapping_sheet.dart';

class StartScreen extends StatefulWidget {
  StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  void initState() {
    super.initState();
  }

  bool isStart = true;



  static const LatLng _center = LatLng(31.118793, 74.463272);

  final Completer<GoogleMapController> _controller = Completer();

  final Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
    _onAddMarkerButtonPressed();
  }

  void _onAddMarkerButtonPressed() {
    setState(() {
      _markers.add(const Marker(
        // This marker id can be anything that uniquely identifies each marker.
        markerId: MarkerId("1"),
        position: _center,
        infoWindow: InfoWindow(
          title: 'Really cool place',
          snippet: '5 Star Rating',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SnappingSheet(
            snappingPositions: [
              SnappingPosition.factor(
                snappingCurve: Curves.elasticOut,
                snappingDuration: Duration(milliseconds: 1750),
                positionFactor: 0.5,
              ),
              SnappingPosition.factor(
                grabbingContentOffset: GrabbingContentOffset.bottom,
                snappingCurve: Curves.linearToEaseOut,
                snappingDuration: Duration(seconds: 1),
                positionFactor: 0.07,
              ),
            ],
            child: mapView(),
            grabbingHeight: 40,
            grabbing: grableView(),
            sheetBelow: SnappingSheetContent(
              draggable: (details) => true,
              child: sheetContentView(),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: CustomAppBar(
              text: '',
            ),
          ),
        ],
      ),
    );
  }

  Widget mapView() {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      markers: _markers,
      initialCameraPosition: const CameraPosition(
        target: _center,
        zoom: 11.0,
      ),
    );
  }

  Widget grableView() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: Get.width * 0.3),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )),
      child: Container(
        width: Get.width * 0.1,
        height: 5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.grey[200],
        ),
      ),
    );
  }

  Widget sheetContentView() {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              child: Image(
                                image: AssetImage(AppImaes.profilepick),
                                width: 56,
                                height: 56,
                              ),
                            ),
                            Text(
                              'Alan Sanusi ',
                              style: TextStyle(
                                  color: AppColors.primarybackColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '&500 ',
                                  style: TextStyle(
                                      color: AppColors.primarybackColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  '4.5km',
                                  style: TextStyle(
                                      color: AppColors.primarybackColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'Acetaminophen ',
                              style: TextStyle(
                                  color: AppColors.primarybackColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.location_on,
                                    color: AppColors.primarybackColor,
                                    size: 20,
                                  ),
                                  onPressed: () {},
                                ),
                                CText(
                                  text: '20 Kado street, Ikeja Lagos ',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.primarybackColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                       
                      isStart? 
                        PrimaryButton(
                            text: 'Reject',
                            width: 92.w,
                            color: Colors.red,
                            onTap: () {
                              setState(() {
                              isStart = false;
                              });
                              Get.back();
                            }):
                            Row(children: [
                           GestureDetector(
                            onTap: () {
                              
                            },
                            child: SvgPicture.asset(AppImaes.phoneicon)),
                           SizedBox(width: 10),
                           GestureDetector(
                            onTap: () {
                              
                            },
                            child: SvgPicture.asset(AppImaes.messegeicon)),   
                            ],),
                        isStart
                          ? PrimaryButton(
                            text: 'Accept',
                            width: 92.w,
                            onTap: () {
                              setState(() {
                              isStart = false;
                              });
                              // Get.to(() => TransportRegisterScreen());
                            })
                          : PrimaryButton(
                            text: 'Cancel',
                            width: 92.w,
                            color: Colors.red,
                            onTap: () {
                              setState(() {
                              isStart = true;
                              });
                            }),
                      ],
                    ),
                    SizedBox(height: 30),
                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                        children: [
                          IconButton(
                          icon: Icon(Icons.home, color: Colors.blue),
                          onPressed: () {
                            setState(() {
                            // Navigate to home

                            });
                          },
                          ),
                          Text(
                          'Home',
                          style: TextStyle(color: Colors.blue),
                          ),
                        ],
                        ),
                        Column(
                        children: [
                          IconButton(
                          icon: Icon(Icons.history, color: Colors.blue),
                          onPressed: () {
                            setState(() {
                            // Navigate to history
                            Get.to(()=>HistoryScreen());
                            });
                          },
                          ),
                          Text(
                          'History',
                          style: TextStyle(color: Colors.blue),
                          ),
                        ],
                        ),
                        Column(
                        children: [
                          IconButton(
                          icon: Icon(Icons.person, color: Colors.blue),
                          onPressed: () {
                            setState(() {
                            // Navigate to profile
                            Get.to(()=>EditProfileScreen());
                            });
                          },
                          ),
                          Text(
                          'Profile',
                          style: TextStyle(color: Colors.blue),
                          ),
                        ],
                        ),
                      ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
