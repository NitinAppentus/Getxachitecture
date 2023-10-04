// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:gearpro/infrastructure/shared/pref_manager.dart';
//
// import '../constants/app_constants.dart';
//
// final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
//
// getFcmToken() async {
//   try {
//     var fcmToken = await _firebaseMessaging.getToken();
//     print('Token: $fcmToken');
//     await PrefManager.putString(AppConstants.fcmToken, fcmToken);
//     return fcmToken;
//   } catch (e) {
//     return null;
//   }
// }
