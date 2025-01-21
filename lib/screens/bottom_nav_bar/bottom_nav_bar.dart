import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/screens/home/home_screen.dart';
import 'package:pharmacy_app/screens/messege/messege_screen.dart';
import 'package:pharmacy_app/screens/pharmacy/pharmacy_screen.dart';
import 'package:pharmacy_app/screens/search/search_screen.dart';
import 'package:pharmacy_app/screens/service_providers/profile.dart';
import 'package:pharmacy_app/utils/app_colors.dart';

class BotomnavbarScreen extends StatefulWidget {
  const BotomnavbarScreen({super.key});

  @override
  State<BotomnavbarScreen> createState() => _BotomnavbarScreenState();
}

class _BotomnavbarScreenState extends State<BotomnavbarScreen> {
  List<TabItem> items = const [
    TabItem(icon: Icons.home_filled, title: 'Home'),
    TabItem(icon: Icons.cast_for_education, title: 'Pharmacy'),
    TabItem(icon: Icons.search, title: 'Search'),
    TabItem(icon: Icons.message, title: 'Messege'),
    TabItem(icon: Icons.person, title: 'Profile'),
  ];
  int visit = 0;
  List allPages = [
    const HomeScreen(),
    const PharmacyScreen(),
    const SearchScreen(),
    const MessegeScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: allPages[visit],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(),
        child: BottomBarFloating(
          items: items,
          backgroundColor: AppColors.primarywhiteColor,
          color: AppColors.primarybackColor.withOpacity(0.5),
          colorSelected: AppColors.primaryappcolor,
          indexSelected: visit,
          paddingVertical: 22.h,
          onTap: (int index) => setState(() {
            visit = index;
          }),
        ),
      ),
    );
  }
}
