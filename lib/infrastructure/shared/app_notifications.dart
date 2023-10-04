// import 'dart:io';
//
// import 'package:get/get.dart';
//
// import '../navigation/routes.dart';
//
// Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   print("Handling a background message");
//   //var newData = json.decode(message.data['body']);
// }
//
// class AppNotification {
//
//   Future<void> init() async{
//     // for notification request  in ios
//     await enableIOSNotifications();
//
//     await registerNotificationListeners();
//
//   }
//
//
//
//   registerNotificationListeners() async {
//     AndroidNotificationChannel channel = androidNotificationChannel();
//     final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
//     await flutterLocalNotificationsPlugin
//         .resolvePlatformSpecificImplementation<
//         AndroidFlutterLocalNotificationsPlugin>()
//         ?.createNotificationChannel(channel);
//     var androidSettings = const AndroidInitializationSettings('@mipmap/ic_launcher');
//     var iOSSettings = const IOSInitializationSettings(
//       requestSoundPermission: true,
//       requestBadgePermission: true,
//       requestAlertPermission: true,
//     );
//
//     /// Update the iOS foreground notification presentation options to allow
//     /// heads up notifications.
//     if(Platform.isIOS){
//       await FirebaseMessaging.instance
//           .setForegroundNotificationPresentationOptions(
//         alert: true,
//         badge: true,
//         sound: true,
//       );
//     }
//
//     RemoteMessage? initialMessage = await FirebaseMessaging.instance.getInitialMessage();
//
//     if (initialMessage != null) {
//       //  Utils.successSnackBar(initialMessage.notification!.title);
//       print('// App received a notification when it was killed');
//     }
//
//     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//       RemoteNotification notification = message.notification!;
//       AndroidNotification android = message.notification!.android!;
//
//       if (notification != null && android != null) {
//         flutterLocalNotificationsPlugin.show(
//             notification.hashCode,
//             notification.title,
//             notification.body,
//             NotificationDetails(
//               android: AndroidNotificationDetails(
//                 channel.id,
//                 channel.name,
//
//                 icon: android.smallIcon,
//               ),
//             ));
//       }
//     });
//
//     FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage? message) {
//       if (message != null && message.data.isNotEmpty) {
//         print("notification_onMessageOpenedApp $message");
//          Get.offNamed(Routes.notification);
//       }
//     });
//
//
//     var initializationSettings =
//     InitializationSettings(android: androidSettings,iOS: iOSSettings);
//     flutterLocalNotificationsPlugin.initialize(
//       initializationSettings,
//       // onDidReceiveNotificationResponse: (details) => {
//       //   print("notification_details $details"),
//       //   // print(details.notificationResponseType),
//       //   // print(details.payload),
//       //   // if (details.payload == 'profile_update')
//       //   //   {Get.toNamed(Routes.EDIT_PROFILE)}
//       //
//       // },
//     );
//   }
//
//   enableIOSNotifications() async {
//     print('Hello Notifiy');
//     await FirebaseMessaging.instance.requestPermission(
//       alert: true, // Required to display a heads up notification
//       badge: true,
//       sound: true,
//     );
//   }
//
//   androidNotificationChannel() {
//     return const AndroidNotificationChannel(
//       'Gear Pro Guide', // title
//       'High Importance Notifications',
//       description: 'This channel is used for important notifications.',
//       playSound: true,
//       importance: Importance.max,
//     );
//   }
// }
