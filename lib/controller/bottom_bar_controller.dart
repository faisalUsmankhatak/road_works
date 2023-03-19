import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../app_config/app_colors.dart';

class BottomBarController extends GetxController{

  MaterialColor primaryColor =  const MaterialColor(0xff4C4C4C,
      {
        50 : AppColors.primaryColor,
        100 : AppColors.primaryColor,
        200 : AppColors.primaryColor,
        300 : AppColors.primaryColor,
        400 : AppColors.primaryColor,
        500 : AppColors.primaryColor,
        600 : AppColors.primaryColor,
        700 : AppColors.primaryColor,
        800 : AppColors.primaryColor,
        900 : AppColors.primaryColor});
  ScrollController scrollController = ScrollController();
  RxInt currentBNBIndex = 0.obs;
  bool animateToTop = false;

  void indexChanged(int index) {
    currentBNBIndex.value = index;
    if(currentBNBIndex.value == 0) {
      if(animateToTop) {
        scrollController.animateTo(0, duration: const Duration(milliseconds: 500), curve:Curves.fastOutSlowIn);
      } else {
        animateToTop = true;
      }
    } else {
      animateToTop = false;
    }
  }
}