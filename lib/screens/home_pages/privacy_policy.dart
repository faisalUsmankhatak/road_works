import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_config/app_colors.dart';
import '../../app_config/styles.dart';
class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                  Text('Privacy Policy',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 18.sp),)
                ],
              ),
            ),
            SizedBox(height: 30.h,),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24.w),
          child:  Text('Contrary to popular belief, Lorem Ipsum is not simply random'
              ' text. It has roots in a piece of classical Latin literature'
              ' from 45 BC, making it over 2000 years old. Richard'
              ' McClintock, a Latin professor at Hampden-Sydney College'
              ' in Virginia, looked up one of the more obscure Latin words,'
              ' consectetur, from a Lorem Ipsum passage, and going through'
              ' the cites of the word in classical literature, discovered '
              'the undoubtable source. Lorem Ipsum comes from sections'
              ' 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum"'
              ' (The Extremes of Good and Evil) by Cicero, written in 45 BC.'
              ' This book is a treatise on the theory of ethics, very popular'
              ' during the Renaissance. The first line of Lorem Ipsum, "Lorem '
              'ipsum dolor sit amet..", comes from a line in section'
              ' 1.10.32.\n\nThe standard chunk of Lorem Ipsum used since the'
              ' 1500s is reproduced below for those interested. Sections 1.10.32'
              ' and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are '
              'also reproduced in their exact original form, accompanied by '
              'English versions from the 1914 translation by H. Rackham.\n\nThere'
              ' are many variations of passages of Lorem Ipsum available, but '
              'the majority have suffered alteration in some form, by injected'
              ' humour, or randomised words which don\'t look even slightly'
              ' believable. If you are going to use a passage of Lorem Ipsum,'
              ' you need to be sure there isn\'t anything embarrassing hidden '
              'in the middle of text. All the Lorem Ipsum generators on the'
              ' Internet tend to repeat predefined chunks as necessary, making '
              'this the first true generator on the Internet. It uses a '
              'dictionary of over 200 Latin words, combined with a handful '
              'of model sentence structures, to generate Lorem Ipsum which '
              'looks reasonable. The generated Lorem Ipsum is therefore always '
              'free from repetition, injected humour, or non-characteristic'
              ' words etc.', style: Styles.myTextStyle(color: AppColors.blackColor.withOpacity(0.7), fontSize: 16.sp),
            textAlign: TextAlign.justify,),
        )

          ],
        ),
      ),
    ));
  }
}
