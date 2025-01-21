import 'package:flutter/material.dart';
import 'package:pharmacy_app/utils/app_colors.dart';
import 'package:pharmacy_app/widgets/custom_appbar.dart';
import 'package:pharmacy_app/widgets/custom_text.dart';
import 'package:pharmacy_app/widgets/custom_textfield.dart';
import 'package:pharmacy_app/widgets/primary_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBar(text: 'Forgot Password'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: CText(
                alignText: TextAlign.center,
                maxLines: 2,
                text: 'Enter your email to reset your password',
                fontSize: 18.0,
                color: AppColors.headingcolor,
                
              ),
            ),
            SizedBox(height: 30.0),
            CustomTextField(controller: TextEditingController(), hintText: 'Email', keyboardType: TextInputType.emailAddress, textcolor: AppColors.headingcolor),
            SizedBox(height: 40.0),
           PrimaryButton(text: 'Reset Password', onTap: (){})
          ],
        ),
      ),
    );
  }
}