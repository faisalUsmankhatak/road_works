import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:road_works/screens/splash_screen.dart';

import 'app_config/app_colors.dart';
import 'controller/bottom_bar_controller.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final bottomController = Get.put(BottomBarController());
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Timmarkus',
          theme: ThemeData(
            primaryColor: Colors.red,
            backgroundColor: Colors.white,
           primarySwatch:bottomController.primaryColor,
           // colorScheme: ThemeData().colorScheme.copyWith(primary: const Color(0xff246BFD)),
          ),
          home: child,
        );
      },
      child:prictac()
      //SplashScreen(),
    );
  }
}
class prictac extends StatelessWidget {
   prictac({Key? key}) : super(key: key);
  ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView.builder(
    controller: controller,
      itemCount: 20,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            controller!.jumpTo( index+.0);
            // Do whatever you want with the item here
          },
          child: Text(index.toString(),style: TextStyle(fontSize: 40.sp),),
        );
      },
    )
    );
  }
}




class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}