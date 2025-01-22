import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy_app/screens/home/home_screen.dart';
import 'package:pharmacy_app/screens/service_providers/history_doctor.dart';
import 'package:pharmacy_app/screens/service_providers/profile.dart';
import 'package:pharmacy_app/utils/app_colors.dart';

class BotomnavbarScreen extends StatefulWidget {
  const BotomnavbarScreen({super.key});

  @override
  State<BotomnavbarScreen> createState() => _BotomnavbarScreenState();
}

class _BotomnavbarScreenState extends State<BotomnavbarScreen> {
  int visit = 0;

  List<TabItem> getItems() {
    return [
      TabItem(
        icon: Icons.home_filled,
        title: visit == 0 ? 'Home' : '',
      ),
      TabItem(
        icon: Icons.history,
        title: visit == 1 ? 'History' : '',
      ),
      TabItem(
        icon: Icons.person,
        title: visit == 2 ? 'Profile' : '',
      ),
    ];
  }

  List allPages = [
    const HomeScreen(),
    HistoryScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: allPages[visit],
      bottomNavigationBar: BottomBarFloating(
        items: getItems(),
        backgroundColor: AppColors.primarywhiteColor,
        color: AppColors.primarybackColor.withOpacity(0.5),
        colorSelected: AppColors.primaryappcolor,
        indexSelected: visit,
        paddingVertical: screenHeight * 0.02,
        titleStyle: TextStyle(
          fontSize: screenWidth * 0.03,
          color: AppColors.primarybackColor,
        ),
        onTap: (int index) => setState(() {
          visit = index;
        }),
      ),
    );
  }
}
