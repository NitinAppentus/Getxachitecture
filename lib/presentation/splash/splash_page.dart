// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';

import 'package:getxarchitecture/presentation/splash/splash_controller.dart';
import '../../infrastructure/core/base/base_view.dart';

class SplashPage extends BaseView<SplashController> {
  SplashPage({super.key});

  @override
  Widget body(BuildContext context) {
    return const SafeArea(
        child:Scaffold());
  }
}


