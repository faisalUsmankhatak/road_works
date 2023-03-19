import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:get/get.dart';
import 'package:road_works/screens/auth_screen/reset_password.dart';
import 'package:road_works/screens/auth_screen/sign_up_screen.dart';

import '../../app_config/app_colors.dart';
import '../../app_config/styles.dart';
import '../../controller/auth_controller.dart';
import '../../widgets/my_filled_button.dart';
import '../../widgets/my_text_field.dart';
import '../home_pages/home_screen_tab.dart';
import '../home_pages/homepage.dart';


class SignInScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  AuthController authController =Get.put(AuthController());
  RxBool passwordVisibility = false.obs;
  RxBool isRememberMe = false.obs;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.w),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 90.h),
                Align(alignment: Alignment.centerLeft, child: Text("Sign In", style: Styles.myTextStyle(color: AppColors.blackColor, fontSize: 24.sp, fontWeight: FontWeight.w400),)),
                SizedBox(height: 19.h),
                MyTextField(
                  height: 55.h,
                  fillColor: Colors.white,
                  controller: emailController,
                  hintText: 'Email',
                  prefixIcon: 'assets/icon/mail.png',
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 20.h,),
                Obx(
                  () => MyTextField(
                    height: 55.h,
                    fillColor: Colors.white,
                    controller: passwordController,
                    // hintText: 'Password',
                    label: 'Password',
                    obsecureText: passwordVisibility.value ? false : true,
                    prefixIcon: 'assets/icon/password.png',
                    suffixIcon: passwordVisibility.value ? 'assets/icon/password_not_visible.png' : 'assets/icon/password_visible.png',
                    onSuffixIconTap: () {
                      passwordVisibility.value = !passwordVisibility.value;
                    },
                  ),
                ),
                SizedBox(height: 20.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {isRememberMe.value = !isRememberMe.value;},
                      child: Obx(
                        () => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Container(
                            //   width: 19.w,
                            //   height: 19.h,
                            //   decoration: BoxDecoration(
                            //     border: Border.all(width: 2.sp, color: AppColors.primaryColor),
                            //     borderRadius: BorderRadius.circular(6.sp),
                            //     color: isRememberMe.value ? AppColors.primaryColor : Colors.transparent
                            //   ),
                            //   child: Center(
                            //     child: Icon(Icons.done, color: Colors.white, size: 15.sp,),
                            //   ),
                            // ),
                            Switch(value: authController.isRememberMe.value, onChanged: (value){
                              authController.isRememberMe.value=value;
                            }),
                            SizedBox(width: 6.w,),
                            Text('Remember me', style: Styles.myTextStyle(),),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                        onTap: () {Get.to(() => ResetPasswordScreen());},
                      child: Text("Forgot Password?", style: Styles.myTextStyle(),)
                    ),
                  ],
                ),
                SizedBox(height: 35.h,),
                MyFilledButton(
                  width: 271.w,
                  height: 55.h,

                  txt: "SIGN IN",
                  color: AppColors.blackColor,
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
                    Text("Don't have an account? ", style: Styles.myTextStyle(),),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => SignUpScreen());
                      },
                      child: Text("Sign Up", style: Styles.myTextStyle(color: AppColors.primaryColor),)
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
