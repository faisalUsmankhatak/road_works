import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../app_config/app_colors.dart';
class DefectedRouting extends StatelessWidget {
  const DefectedRouting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.sp),
          color: AppColors.blackColor
        ),
        padding: EdgeInsets.all(18.sp),
        child: Text('Acceept Project',style: TextStyle(color: AppColors.whiteColor,fontSize: 18.sp)),
      ),
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
                Text('Defected Routes',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 18.sp),)
              ],
            ),
          ),
          SizedBox(height: 37.h,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 60.w),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Tabunan,Tabunan,Tabunan,',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp),),

SizedBox(height: 20.h,),
            Container(
              width: 249.w,
              height: 175.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/image.png')
                )
              ),
            ),
              SizedBox(height: 23.h,),
             Row(
               children: [
                 Text('Latitude:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp)),
                 Text('123456',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.sp))
               ],
             ),
              SizedBox(height: 5.h,),
              Row(
                children: [
                  Text('Longitude:',style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('123456',style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
              SizedBox(height: 5.h,),
              Row(
                children: [
                  Text('Budget:',style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('123456',style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
              SizedBox(height: 5.h,),
              Row(
                children: [
                  Text('Time:',style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('3 weeks',style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
              SizedBox(height: 11.h,),
              Text('Description:'),

            ],
          ),),
          SizedBox(height: 150.h,),
          TextButton(onPressed: (){}, child: Text('Completed',style: TextStyle(fontSize: 15.sp),))
        ],
      ),
    ));
  }
}
