import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_config/app_colors.dart';
class CompletedRoutes extends StatelessWidget {
  const CompletedRoutes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
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
                Text('Completed Routes',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 18.sp),)
              ],
            ),
          ),
          SizedBox(height: 33.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 30.w),
            child: SizedBox(
              height: 50.h,
              child: TextFormField(

                decoration: InputDecoration(
                    label: const Text('Search Routes'),
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
          SizedBox(height: 49.h,),
          listingData(),
          SizedBox(height: 3.h,),
          listingData(),
          SizedBox(height: 3.h,),
          listingData(),

        ],
      ),
    ));
  }
  Widget listingData(){
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 25.w),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.only(right: 30.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      width: 15.w,
                      height: 15.h,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: AppColors.blackColor,width: 1.sp)
                      ),
                    ),
                    SizedBox(height: 2.h,),
                    Container(
                      width: 1.w,
                      height: 50.h,
                      decoration: const BoxDecoration(
                          color: AppColors.blackColor
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10.w,),
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Faisal',style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 10.h,),
                    Container(
                      width: 160.w,

                      child: const Text('Description of the task no 3 here'),
                    )
                  ],
                ),
                Expanded(child: SizedBox()),
                Text('11 Nov,2022')
              ],
            ),
          ),


        ],
      ),
    );
  }
}
