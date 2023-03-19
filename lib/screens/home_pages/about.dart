import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

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
                Text('About',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 18.sp),)
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
