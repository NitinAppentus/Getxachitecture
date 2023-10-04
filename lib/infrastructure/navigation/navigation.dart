
import 'package:get/get.dart';

import '../../presentation/splash/splash_binding.dart';
import '../../presentation/splash/splash_page.dart';
import 'routes.dart';

class AppPages {
  static List<GetPage> pageList = [
    GetPage(
      name: Routes.splash,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),

  ];
}
