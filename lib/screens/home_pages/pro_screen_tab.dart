import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:get/get.dart';
import 'package:road_works/screens/home_pages/privacy_policy.dart';

import '../../app_config/app_colors.dart';
import '../../app_config/styles.dart';
import '../../controller/notification_controller.dart';
import '../../widgets/my_filled_button.dart';
import '../auth_screen/sign_in_screen.dart';
import '../payment_screen/payment_screen.dart';
import '../static_data/about_faq_privacy.dart';
import 'about.dart';


class ProScreenTab extends StatelessWidget {
   ProScreenTab({Key? key}) : super(key: key);
  NotificationController notificationController=Get.put(NotificationController());
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(
          children: [
          Container(
            width: double.infinity,
            height: 93.h,
            color: Color(0xff4C4C4C),
            child: Row(
              children: [
                SizedBox(width: 18.w,),
                Container(
                  width: 18.w,
                  height: 18.h,
                  padding: EdgeInsets.symmetric(vertical: 35.h,horizontal: 14.w),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon/back.png')
                    )
                  ),
                ),
                SizedBox(width: 24.w,),
                Text('Profile',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 18.sp),)
              ],
            ),
          ),
            SizedBox(height: 56.h,),
            InkWell(
                onTap: (){},
                child: containerButton('faisalusmankktk495@gmail.com')),
            SizedBox(height: 18.h,),
            InkWell(
                onTap: (){},
                child: containerButton('Notification')),
            SizedBox(height: 18.h,),
            InkWell(
                onTap: (){
                  Get.to(AboutFaqsPrivacyScreen(type: 'About',));
                },
                child: containerButton('About')),
            SizedBox(height: 18.h,),
            InkWell(
                onTap: (){
Get.to(AboutFaqsPrivacyScreen(type: 'Privacy Policy',));
                },
                child: containerButton('Privacy terms')),
            SizedBox(height: 18.h,),
            InkWell(
                onTap: (){
Get.to(SignInScreen());
                },
                child: containerButton('Logout')),
            SizedBox(height: 18.h,),
          ],
        ),
      ),
    );
  }
  Widget containerButton(String title){
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 27.w),
      child: Container(
        height: 57.h,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 10.sp),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.sp),
            border: Border.all(color: AppColors.blackColor,width: 1.sp)
        ),
        child: Row(
          children: [
            Text(title),
            title=='Notification'?Expanded(child: SizedBox()):SizedBox(),
            title=='Notification'?Obx(()=>
               Switch(value: notificationController.isOnNotification.value, onChanged: (value){
notificationController.isOnNotification.value=value;
              }),
            ):SizedBox()
          ],
        ),
      ),
    );
  }
}
