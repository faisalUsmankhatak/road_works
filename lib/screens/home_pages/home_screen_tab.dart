import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/src/size_extension.dart';
import 'package:get/get.dart';
import 'package:road_works/screens/home_pages/pro_screen_tab.dart';


import '../../app_config/app_colors.dart';
import '../../app_config/styles.dart';
import '../../controller/home_screen_tab_controller.dart';
import '../../widgets/my_text_field.dart';
import '../mockup_screen/mockup_screen.dart';
import 'completed_routes.dart';
import 'defected_routing.dart';

class HomeScreenTab extends StatelessWidget {

  TextEditingController searchController = TextEditingController();
  HomeScreenTabController controller = HomeScreenTabController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [

Padding(
  padding:  EdgeInsets.symmetric(vertical: 20.h,horizontal: 25.w),
  child:   Row(mainAxisAlignment: MainAxisAlignment.end,
    children: [

          InkWell(
            onTap:(){
              Get.to(   ProScreenTab());
            } ,
            child: Container(

        width: 35.w,
        height: 35.h,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icon/profile.png')
            )
        ),
      ),

          ),

    ],
  ),
),
              Padding(
                padding:  EdgeInsets.only(left: 30.w),
                child: Text('Hello En Azan!',style: TextStyle(color: Color(0xff909090),fontSize: 18.sp)),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 30.w),
                  child: Text('Its nice to see you.',style: TextStyle(fontSize: 24.sp,color: Color(0xff4C4C4C)),)),
              SizedBox(height: 22.h,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 30.w),
                child: SizedBox(
                  height: 50.h,
                  child: TextFormField(

                    decoration: InputDecoration(
                      label: Text('Search Something'),
contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
                      filled: true,
                      enabledBorder:OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffEEEEEE),),
                          borderRadius: BorderRadius.circular(15.sp,)
                      ) ,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffEEEEEE),),
                        borderRadius: BorderRadius.circular(15.sp,)
                      ),
                      suffixIcon: Container(
                        width: 26.w,
                        height: 26.h,
                        decoration: BoxDecoration(

                          border: Border.all(color: Color(0xffEEEEEE),),

                          image: DecorationImage(
                            image: AssetImage('assets/icon/search.png')
                          )
                        ),
                      )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 62.h,),
              buildContainer(controller.homeScreenContainerData[0]),
              SizedBox(height: 28.h,),
              InkWell(
                  onTap: (){
                    Get.to(const DefectedRouting());
                  },
                  child: buildContainer(controller.homeScreenContainerData[1])),
              SizedBox(height: 28.h,),
              InkWell(
                  onTap: (){
Get.to(const CompletedRoutes());
                  },
                  child: buildContainer(controller.homeScreenContainerData[2])),
              SizedBox(height: 28.h,),
            ],
          ),
        ),

      ),
    );
  }


Widget buildContainer(Map data){
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 25.w),
      child: Container(

        padding: EdgeInsets.symmetric(horizontal: 31.w,vertical: 18.h),
        height: 93.h,
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.blackColor.withOpacity(0.5),
              blurRadius: 8
            )
          ],
            color: Color(0xff4C4C4C),
            borderRadius: BorderRadius.circular(25.sp)
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(data['title'],style: TextStyle(fontSize: 18.sp,color: Color(0xffFFFFFF))),
            SizedBox(height: 5.h,),
            Text(data['subTitle'],style: TextStyle(color: Color(0xffFFFFFF),fontSize: 10.sp),)
          ],
        ),
      ),
    );
}
}
