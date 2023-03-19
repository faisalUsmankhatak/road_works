import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:get/get.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import '../../app_config/app_colors.dart';
import '../../app_config/styles.dart';
import '../../widgets/my_filled_button.dart';
import '../../widgets/my_text_field.dart';
import '../home_pages/home_screen_tab.dart';
import '../home_pages/homepage.dart';


class SignUpScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  RxBool passwordVisibility = false.obs;
  RxBool confirmPasswordVisibility = false.obs;
  RxBool isAcceptTermAndCondition = false.obs;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 25.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {Get.back();},
                    child: Container(
                      height: 27.sp,
                      width: 26.sp,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/icon/back_icon.png"),
                        )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 22.h),
                Align(alignment: Alignment.centerLeft, child: Text("Sign Up", style: Styles.myTextStyle(color: AppColors.blackColor, fontSize: 24.sp, fontWeight: FontWeight.w400),)),
                SizedBox(height: 19.h),
                MyTextField(
                  height: 55.h,
                  controller: nameController,
                  hintText: 'Full Name',
                  prefixIcon: 'assets/icon/people.png',
                ),
                SizedBox(height: 20.h,),
                MyTextField(
                  height: 55.h,
                  controller: emailController,
                  hintText: 'Email',
                  prefixIcon: 'assets/icon/email.png',
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 20.h,),
                MyTextField(
                  height: 55.h,
                  controller: phoneController,
                  hintText: 'Phone No.',
                  prefixIcon: 'assets/icon/phone.png',
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20.h,),
                Obx(
                  () => MyTextField(
                    height: 55.h,
                    controller: passwordController,
                    hintText: 'Password',
                    obsecureText: passwordVisibility.value ? false : true,
                    prefixIcon: 'assets/icon/password.png',
                    suffixIcon: passwordVisibility.value ? 'assets/icon/password_not_visible.png' : 'assets/icon/password_visible.png',
                    onSuffixIconTap: () {
                      passwordVisibility.value = !passwordVisibility.value;
                    },
                  ),
                ),
                SizedBox(height: 20.h,),
                Obx(
                  () => MyTextField(
                    height: 55.h,
                    controller: confirmPasswordController,
                    hintText: 'Confirm Password',
                    obsecureText: confirmPasswordVisibility.value ? false : true,
                    prefixIcon: 'assets/icon/password.png',
                    suffixIcon: confirmPasswordVisibility.value ? 'assets/icon/password_not_visible.png' : 'assets/icon/password_visible.png',
                    onSuffixIconTap: () {
                      confirmPasswordVisibility.value = !confirmPasswordVisibility.value;
                    },
                  ),
                ),
                SizedBox(height: 20.h,),
                // GestureDetector(
                //   onTap: () {isAcceptTermAndCondition.value = !isAcceptTermAndCondition.value;},
                //   child: Obx(
                //     () => Row(
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //         Container(
                //           width: 19.w,
                //           height: 19.h,
                //           decoration: BoxDecoration(
                //             border: Border.all(width: 2.sp, color: AppColors.primaryColor),
                //             borderRadius: BorderRadius.circular(6.sp),
                //             color: isAcceptTermAndCondition.value ? AppColors.primaryColor : Colors.transparent
                //           ),
                //           child: Center(
                //             child: Icon(Icons.done, color: Colors.white, size: 15.sp,),
                //           ),
                //         ),
                //         SizedBox(width: 6.w,),
                //         Row(
                //           children: [
                //             Text("By Signing Up I agree to the  ", style: Styles.myTextStyle(fontSize: 12.sp),),
                //             GestureDetector(
                //               onTap: () {
                //                 // Get.to(() => SignUpScreen());
                //               },
                //               child: Text("Terms & Conditions", style: Styles.myTextStyle(color: AppColors.primaryColor, fontSize: 12.sp),)
                //             )
                //           ],
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                SizedBox(height: 35.h,),
                MyFilledButton(
                  width: 271.w,
                  height: 55.h,
                  color: AppColors.blackColor,
                  txt: "SIGN UP",
                  txtFontSize: 16,
                  ontap: () {
                    Get.to(() => HomeScreenTab());
                  },
                ),
                SizedBox(height: 50.h,),
                SignInButton(
                  Buttons.Google,
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.sp,),
                    borderSide: BorderSide(color: Colors.transparent)
                  ),
                  padding: EdgeInsets.symmetric(vertical: 8.h),
                  text: "Sign up with Google",
                  onPressed: () {},
                ),
                // Text("OR", style: Styles.myTextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500, color: Color(0xff9D9898)),),
                SizedBox(height: 60.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account? ", style: Styles.myTextStyle(),),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Text("Sign In", style: Styles.myTextStyle(color: AppColors.primaryColor),)
                    )
                  ],
                ),
                SizedBox(height: 50.h,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
