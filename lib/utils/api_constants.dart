

import 'package:pharmacy_app/utils/app_toast.dart';

class ApiConstants{
  static String base_url = 'https://dev.progressapp.live/api';
  // static String base_url = 'https://tribe.ma/api';
  static String login = '/login';
  static String register = '/register';
  static String home = '/home';
  static String card = '/card';
  static String favorite = '/favorite';
  static String sendOtp = '/forget-password';
  static String resetPassword = '/reset-password';
  static String updateProfile = '/profile-update';
  static String getNotifications = '/get-notifications';
  static String unfavorite = '/unfavorite';
  static String events = '/events';
  static String purchase = '/purchase';
  static String resaleTicket = '/resale';
  static String marketPlace = '/market-place';
  static String ticketResale = '/ticket-resale-order';
  static String sellingHistory = '/saling-history';
  static String artistDetail = '/artist-detail';
  static String getUserFavoriteEvents = '/get-user-favorite-events';
  //////// Storage keys /////////

  static String userToken = 'userToken';
  static String profileData = 'profileData';
  static String paymentId = '';


}

// Future<void> customUrlLauncher(String url) async {
//   if (await canLaunchUrl(Uri.parse(url))) {
//     await launchUrl(Uri.parse(url));
//   } else {
//     appToast('Failed to open the link');
//   }
// }