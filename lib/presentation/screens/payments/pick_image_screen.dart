import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/presentation/components/button_widget.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:deraya_application/presentation/screens/payments/payment_screen.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PickImageScreen extends StatelessWidget {
  const PickImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 18.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            50.ph,
            const CustomAppbar(title:'upload image'),
            24.ph,
            DottedBorder(
              color: AppColors.primary,
              strokeWidth: 2,
              radius: Radius.circular(10),
              borderType: BorderType.RRect,
              dashPattern: [9, 9, 9, 9],
              child: SizedBox(
                height: 110.h,
                width: double.infinity,
                child: Column(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.cloud_upload_outlined,color: AppColors.primary,size: 30.sp,)),
                    TextWidget(title: 'قم بتحميل صورة الوصل ',fontSize: 16.sp,fontWeight: FontWeight.w700,color: AppColors.primary,),
                   4.ph,
                    TextWidget(title: 'يجب أن تكون صورة الوصل والأرقام واضحة',fontSize: 16.sp,fontWeight: FontWeight.w500,color: AppColors.grayColor,),
                  ],
                ),
              ),
            ),
            80.ph,
            TextWidget(title: 'رقم الهاتف',fontSize:16 ,textAlign:TextAlign.start,fontWeight:FontWeight.w700 ,color: AppColors.primary,),
            8.ph,
            Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10.r)
              ),
              child: Row(
                children: [
                  Expanded(child:
                 TextField(
                   keyboardType: TextInputType.phone,
                  // textDirection: TextDirection.ltr,
                   textInputAction: TextInputAction.done,
                   cursorColor: AppColors.grayColor,
                   showCursor: false,
                   style: TextStyle(color: AppColors.grayColor),
                   decoration: InputDecoration(
                     hintText: 'رقم الهانف',
                     hintStyle: TextStyle(color: Colors.grey.withOpacity(0.6),fontSize: 16,),
                     border: InputBorder.none,
                     enabledBorder: InputBorder.none,
                     focusedBorder: InputBorder.none,
                   ),
                 ),

                  ),
                  4.pw,
                  VerticalDivider(thickness: 1,endIndent: 3,indent: 3,),
                  4.pw,
                  const TextWidget(title: '20+',fontSize:16 ,fontWeight:FontWeight.w700,color: Color(0xff965555),),

                ],
              ),
            ),
            24.ph,
            TextWidget(title: 'email'.tr(),fontSize:16 ,textAlign:TextAlign.start,fontWeight:FontWeight.w700 ,color: AppColors.primary,),
            8.ph,
            SizedBox(
              height: 60,
              child: TextField(
                keyboardType: TextInputType.phone,
              //  textDirection: TextDirection.ltr,
                textAlign: TextAlign.end,
                textInputAction: TextInputAction.done,
                cursorColor: AppColors.grayColor,
                showCursor: false,
                style: TextStyle(color: AppColors.grayColor),
                decoration: InputDecoration(
                  hintText: 'mostafa@gmail.com',
                  //hintTextDirection: TextDirection.ltr,
                  hintStyle: TextStyle(color: Colors.grey.withOpacity(0.6),fontSize: 16,),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey,),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey,),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey,),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: ButtonWidget(title: 'إرسال الوصل',fontSize:20 ,fontWeight: FontWeight.w700,radius: 10,),
            ),
            SizedBox(height: 120.h,),
          ],
        ),
      ),
    );
  }
}
