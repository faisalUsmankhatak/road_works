import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:get/get.dart';

import '../app_config/app_colors.dart';
import 'auth_screen/sign_in_screen.dart';
import 'intro_screen/intro_screen.dart';

class SplashScreen extends StatelessWidget {
  var oneSec = const Duration(seconds: 2);
  @override
  Widget build(BuildContext context) {
    navigate();
    return Scaffold(
      backgroundColor: AppColors.greyColor,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: Get.width,),
          SizedBox(
            width: 271.w,
            height: 63.h,
            child: Image.asset("assets/icon/splash_screen_icon.png",)
          ),
          SizedBox(width: 5.w,),
        ],
      ),
    );
  }


  navigate() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.off(()=> SignInScreen(), transition: Transition.rightToLeft);
  }
}
