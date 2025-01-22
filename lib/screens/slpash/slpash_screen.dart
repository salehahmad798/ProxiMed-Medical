import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pharmacy_app/screens/authentication/welcome/sign_in_as.dart';
import 'package:pharmacy_app/screens/darwer/derwar_screen.dart';
import 'package:pharmacy_app/screens/service_providers/self_register.dart';
import 'package:pharmacy_app/utils/app_colors.dart';
import 'package:pharmacy_app/utils/app_images.dart';
import 'package:pharmacy_app/widgets/custom_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void initState() {
    super.initState();
    checkIntro();
  }

  void checkIntro() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..forward();

    Timer(const Duration(seconds: 3), () {
      Get.offAll(() => SignInAsScreen());
      // if(GetStorage().read(ApiConstants.userToken)==null){
      //   Navigator.of(context).push(
      //     MaterialPageRoute(
      //       builder: (context) =>const OnBoardingScreen(),
      //     ),
      //   );
      // }else{
      //   Get.offAll(() =>  BotomnavbarScreen());
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryappcolor,
      body: Center(
        child: ScaleTransition(
          scale: _controller.drive(CurveTween(curve: Curves.easeIn)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppImaes.pharmacy_logo,
                width: 103.w,
                height: 103.h,
              ),
              CText(
                text: 'Pharmacy App',
                fontSize: 27.34,
                fontWeight: FontWeight.w700,
              )
            ],
          ),
        ),
      ),
    );
  }
}
