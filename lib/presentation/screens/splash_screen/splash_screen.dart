import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:lottie/lottie.dart';
import 'package:task_manager/core/custom_assets/custom_lottie/custom_lottie_animation.dart';
import 'package:task_manager/core/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      // go to onboarding screen
      Get.toNamed(AppRoutes.onboardingscreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Center(child: Lottie.asset(CustomLottieAnimation.done))],
      ),
    );
  }
}
