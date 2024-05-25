import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sejourne/features/auth/ui/LoginPage.dart';

class SplashGetController extends GetxController {
  void navigateToNextScreen() {
    Future.delayed(Duration(seconds: 3), () {
      Get.off(() => LoginPage());
    });
  }

  @override
  void onInit() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      navigateToNextScreen();
    });
    super.onInit();
  }
}
