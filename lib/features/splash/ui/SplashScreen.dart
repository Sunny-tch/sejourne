///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../get_controllers/splash_get_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashGetController splashGetController = Get.put(SplashGetController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            ///***If you have exported images you must have to copy those images in assets/images directory.
            Image(
              image: AssetImage("assets/images/top_decorative.png"),
              height: 100,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),

            ///***If you have exported images you must have to copy those images in assets/images directory.
            Hero(
              tag: "logo",
              child: Image(
                image: AssetImage("assets/images/logo.png"),
                height: 100,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.scaleDown,
              ),
            ),

            ///***If you have exported images you must have to copy those images in assets/images directory.
            Image(
              image: AssetImage("assets/images/bottom_decorative.png"),
              height: 100,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
