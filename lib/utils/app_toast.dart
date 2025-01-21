import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:pharmacy_app/utils/app_colors.dart';


appToast(String message){
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 1,
      backgroundColor: AppColors.primaryappcolor,
      textColor: Colors.white,
      fontSize: 16.0
  );
}

Widget appLoader({Color? color}){
  return  Center(child: CircularProgressIndicator(color:color?? AppColors.primaryappcolor));
}