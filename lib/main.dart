import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';
import 'package:pharmacy_app/controller/theme_controller.dart';
import 'package:pharmacy_app/screens/slpash/slpash_screen.dart';


void main() async{
  await GetStorage.init();
  runApp(MyApp());
}
// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  ThemeController themeController = Get.put(ThemeController());
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    themeController.getAndApplyTheme();
    return ScreenUtilInit(
      designSize: const Size(393, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
            theme: themeController.lightTheme,
            darkTheme: themeController.darkTheme,
            themeMode: ThemeMode.dark,
            debugShowCheckedModeBanner: false,
            home: const SplashScreen());
      },
    );
  }
}