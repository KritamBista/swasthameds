import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swasthameds/utils/routes.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 1), () {
      Get.offNamed(AppRoute.bottomNavView);
     });
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Splash Screen"),
        ],
      ),
    );
  }
}
