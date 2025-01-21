// import 'dart:convert';
// import 'dart:developer';
// import 'dart:io';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:http/http.dart' as http;
// import 'package:pharmacy_app/utils/api_constants.dart';
// import 'package:pharmacy_app/utils/app_toast.dart';
// import 'package:tribe_event/screens/authentication/login/login.dart';
// import 'package:tribe_event/screens/user/home/Controller/home_controller.dart';
// import 'package:tribe_event/screens/user/profile/Model/profile_model.dart';
// import 'package:tribe_event/utils/api_constants.dart';
// import 'package:tribe_event/utils/app_images.dart';
// import 'package:tribe_event/utils/app_toast.dart';

// import '../../user/bottom_nav/bottom_navbar_scrren.dart';
// import '../forgot_password/enter_password_screen.dart';
// import '../forgot_password/successfully_change_password.dart';

// class AuthController extends GetxController {
//   final TextEditingController emailController =
//       TextEditingController(/*text: 'user@gmail.com'*/);
//   final TextEditingController firstNameController = TextEditingController();
//   final TextEditingController lastNameController = TextEditingController();
//   final TextEditingController passwordController =
//       TextEditingController(/*text: '12345678'*/);
//   final TextEditingController confirmPasswordController =
//       TextEditingController(/*text: '12345678'*/);
//   final TextEditingController phoneController = TextEditingController();
//   TextEditingController pinController = TextEditingController();
//   final TextEditingController pinPasswordController = TextEditingController();
//   final TextEditingController payController = TextEditingController();
//   var isLoading = false.obs;
//   var obSecurePassword = true.obs;

//   final rememberCheck = false.obs;
//   final GlobalKey<FormState> formKey = GlobalKey();
//   final GlobalKey<FormState> singUpFormKey = GlobalKey();
//   FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
//   signUpUser() async {
//     if (!singUpFormKey.currentState!.validate()) return;

//     if (passwordController.text.length < 8) {
//       appToast('The password field must be at least 8 characters.');
//       return;
//     }
//     try {
//       isLoading(true);
//       // String? token = await firebaseMessaging.getToken();
//       String apiUrl = ApiConstants.base_url + ApiConstants.register;
//       log(apiUrl);
//       Map<String, dynamic> postData = {
//         'email': emailController.text.trim(),
//         'password': passwordController.text.trim(),
//         'first_name': firstNameController.text.trim(),
//         'last_name': lastNameController.text.trim(),
//         'device_token':''
//       };
//       final response = await http.post(
//         Uri.parse(apiUrl),
//         body: postData,
//       );
//       var responseData = jsonDecode(response.body);
//       if (responseData['status'] == 'success') {
//         ProfileModel userData = profileModelFromJson(response.body);
//         GetStorage().write(ApiConstants.profileData, userData);
//         debugPrint(
//             'user data in storage ${GetStorage().read(ApiConstants.profileData)}');
//         var token = responseData['data']['token'];
//         log('User Token $token');
//         log('Response: $responseData');
//         GetStorage().write(ApiConstants.userToken, token);
//         Get.to(() => BotomnavbarScreen());
//         firstNameController.clear();
//         lastNameController.clear();
//         passwordController.clear();
//         emailController.clear();
//         appToast(responseData['message']);
//         isLoading(false);
//       } else {
//         appToast(responseData['message']);
//         isLoading(false);
//         print('Error: ${response.body}');
//       }
//     } catch (error) {
//       appToast('Something went wrong!');
//       isLoading(false);
//       debugPrint('Error: $error');
//     }
//   }

//   Future<dynamic> signInWithGoogle() async {
//     try {
//       final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

//       final GoogleSignInAuthentication? googleAuth =
//           await googleUser?.authentication;

//       final credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth?.accessToken,
//         idToken: googleAuth?.idToken,
//       );

//       UserCredential userData =
//           await FirebaseAuth.instance.signInWithCredential(credential);
//       debugPrint(
//           'user data in google ${userData.additionalUserInfo!.username}');
//     } on Exception catch (e) {
//       // TODO
//       print('exception->$e');
//     }
//   }

//   loginUser() async {
//     if (!formKey.currentState!.validate()) return;
//     try {
//       isLoading(true);
//       // String? token = await firebaseMessaging.getToken();
//       String apiUrl = ApiConstants.base_url + ApiConstants.login;
//       Map<String, dynamic> postData = {
//         'email': emailController.text.trim(),
//         'password': passwordController.text.trim(),
//         'device_token':''
//       };
//       final response = await http.post(
//         Uri.parse(apiUrl),
//         body: postData,
//       );
//       var responseData = jsonDecode(response.body);
//       if (responseData['status'] == 'success') {
//         ProfileModel userData = profileModelFromJson(response.body);

//         GetStorage().write(ApiConstants.profileData, userData);

//         debugPrint(
//             'user data in storage ${GetStorage().read(ApiConstants.profileData)}');

//         var token = responseData['data']['token'];
//         log('User Token $token');

//         log('Response: $responseData');
//         GetStorage().write(ApiConstants.userToken, token);
//         Get.to(() => BotomnavbarScreen());
//         emailController.clear();
//         passwordController.clear();
//         isLoading(false);
//         appToast(responseData['message']);
//       } else {
//         appToast(responseData['message']);
//         isLoading(false);

//         log('Error: ${response.body}');
//       }
//     } catch (error) {
//       appToast('Something went wrong!');
//       isLoading(false);
//       log('Error: $error');
//     }
//   }

//   sendOtp() async {
//     try {
//       isLoading(true);
//       String apiUrl = ApiConstants.base_url + ApiConstants.sendOtp;
//       Map<String, dynamic> postData = {
//         'email': emailController.text.trim(),
//       };
//       final response = await http.post(
//         Uri.parse(apiUrl),
//         body: postData,
//       );
//       var responseData = jsonDecode(response.body);
//       if (responseData['status'] == 'success') {
//         Get.to(() => EnterPasswordScreen(code: responseData['otp']));
//         isLoading(false);
//         debugPrint('otp is ${responseData['otp']}');
//         appToast('OTP sent to ${emailController.text.trim()}');
//       } else {
//         appToast(responseData['message']);
//         isLoading(false);

//         log('Error: ${response.body}');
//       }
//     } catch (error) {
//       appToast('Something went wrong!');
//       isLoading(false);
//       log('Error: $error');
//     }
//   }

//   resetPassword() async {
//     try {
//       isLoading(true);
//       String apiUrl = ApiConstants.base_url + ApiConstants.resetPassword;
//       Map<String, dynamic> postData = {
//         'email': emailController.text.trim(),
//         'password': pinPasswordController.text.trim(),
//         'otp': pinController.text.trim(),
//       };

//       final response = await http.post(
//         Uri.parse(apiUrl),
//         body: postData,
//       );

//       var responseData = jsonDecode(response.body);
//       // debugPrint(postData.toString() + responseData);
//       if (responseData['status'] != null &&
//           responseData['status'] == 'success') {
//         Get.offAll(Login());
//         isLoading(false);
//       } else {
//         appToast(responseData['message'] ?? 'Could not change the password');
//         isLoading(false);
//       }
//     } catch (error) {
//       appToast('Something went wrong!');
//       isLoading(false);
//       log('Error: $error');
//     }
//   }

//   Future<void> updateProfile() async {
//     try {
//     isLoading(true);
//     String apiUrl = ApiConstants.base_url + ApiConstants.updateProfile;
//     var request = http.MultipartRequest(
//       'POST',
//       Uri.parse(apiUrl),
//     );
//     request.headers.addAll({
//       'Authorization': 'Bearer ${GetStorage().read(ApiConstants.userToken)}',
//       // Include bearer token here,
//     });
//     request.fields['email'] = emailController.text.trim();
//     request.fields['first_name'] = firstNameController.text.trim();
//     request.fields['last_name'] = lastNameController.text.trim();
//     if (imagePath.value.contains('cache')) {
//       final file = File(imagePath.value);
//       request.files.add(await http.MultipartFile.fromPath('avatar', file.path));
//       debugPrint('updating the file');
//     } else {
//       request.fields['avatar'] = imagePath.value;
//     }
//     var streamedResponse = await request.send();
//     var response = await http.Response.fromStream(streamedResponse);
//     var responseData = jsonDecode(response.body);
//     if (response.statusCode == 200) {
//       var data = responseData['data'];
//       ProfileDetail details = ProfileDetail.fromJson(data);
//       HomeController ctrl = Get.find();
//       ctrl.profileData.value!.detail = details;
//       GetStorage().write(ApiConstants.profileData, ctrl.profileData.value);
//       ctrl.getProfileData();
//       Get.back();
//       appToast('Profile updated successfully');
//     } else {
//       appToast('Failed to update profile');
//     }
//     isLoading(false);
//     } catch (error) {
//       appToast('Something went wrong!');
//       log('Error: $error');
//     } finally {
//       isLoading(false);
//     }
//   }

//   Future<void> changePassword() async {
//     try {
//     isLoading(true);
//     String apiUrl = ApiConstants.base_url + ApiConstants.updateProfile;
//     var request = http.MultipartRequest(
//       'POST',
//       Uri.parse(apiUrl),
//     );
//     request.headers.addAll({
//       'Authorization': 'Bearer ${GetStorage().read(ApiConstants.userToken)}',
//       // Include bearer token here,
//     });
//     request.fields['password_confirmation'] = passwordController.text.trim();
//     request.fields['password'] = confirmPasswordController.text.trim();

//     var streamedResponse = await request.send();
//     var response = await http.Response.fromStream(streamedResponse);
//     var responseData = jsonDecode(response.body);
//     if (response.statusCode == 200) {
//       Get.back();
//       appToast('Password Updated successfully');
//     } else {
//       appToast('Failed to update the password');
//     }
//     isLoading(false);
//     } catch (error) {
//       appToast('Something went wrong!');
//       log('Error: $error');
//     } finally {
//       isLoading(false);
//     }
//   }

//   var imagePath = ''.obs;

//   // Function to open camera and get image
//   Future<void> getImage(ImageSource source) async {
//     final pickedFile = await ImagePicker().pickImage(source: source);
//     if (pickedFile != null) {
//       imagePath.value = pickedFile.path;
//     }
//     debugPrint('image path ::::::: ${imagePath.value}');
//   }
// }