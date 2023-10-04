// import 'package:gearpro/infrastructure/shared/permision_fun.dart';
// import 'package:gearpro/infrastructure/shared/pref_manager.dart';
// import 'package:get/get.dart';
// import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
// import '../constants/app_constants.dart';
// import '../navigation/routes.dart';
//
// class DynamicLinkService {
//   Future<void> initDynamicLinks() async {
//     var dynamicLinks = FirebaseDynamicLinks.instance;
//     var isLogin = await PrefManager.getBool(AppConstants.loggedIn);
//     await Future.delayed(Duration(seconds: 1));
//     var data = await FirebaseDynamicLinks.instance.getInitialLink();
//     var deepLink = data?.link;
//     print("${deepLink} deeplink");
//     if (deepLink != null) {
//       final queryParams = deepLink.queryParameters;
//       final pathSegments = deepLink.pathSegments;
//
//     } else {
//
//     }
//
//     dynamicLinks.onLink.listen((dynamicLink) async {
//       var deepLink = dynamicLink.link;
//       print('DynamicLinks onLink listener $deepLink');
//       if (deepLink != null) {
//         PrefManager.putBool(AppConstants.isDeepLink, true);
//         final pathSegments = deepLink.pathSegments;
//         final queryParams = deepLink.queryParameters;
//         print("${deepLink} deeplink");
//         if (deepLink != null) {
//           final queryParams = deepLink.queryParameters;
//           final pathSegments = deepLink.pathSegments;
//
//         } else {
//
//         }
//       }
//     }, onError: (error) {
//       print('DynamicLinks onError $error');
//     });
//   }
//
// }
