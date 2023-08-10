import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/colors.dart';
import '../../components/button_widget.dart';
import '../../components/text_form_field.dart';
import '../../components/text_widget.dart';
import 'login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 40.w),
          child: Column(
            children: [
              SizedBox(height: 90.h,),
              TextWidget(title: 'welcome'.tr(),fontSize: 31.69.sp,fontWeight:FontWeight.w600,color: ColorsManger.primary,),
              SizedBox(height: 40.h,),
              const UserName(),
              SizedBox(height: 4.h,),
              TextFormFieldWidget(
                borderRadius: 1.0,
                onChanged: (val){},
                hintText: 'Mostafa Ramadan',
                borderColor: ColorsManger.primary.withOpacity(0.6),
                textalign: TextAlign.end,

              ),
              SizedBox(height: 16.h,),
              const Email(),
              SizedBox(height: 4.h,),
              TextFormFieldWidget(
                borderRadius: 1.0,
                onChanged: (val){},
                hintText: 'info@example.com',
                borderColor: ColorsManger.primary.withOpacity(0.6),
                textalign: TextAlign.end,

              ),
              SizedBox(height: 16.h,),
              const Password(),
              SizedBox(height: 4.h,),
              TextFormFieldWidget(
                borderRadius: 1.0,
                onChanged: (val){},
                hintText: '************',
                borderColor: ColorsManger.primary.withOpacity(0.6),
                password: true,
              ),
              SizedBox(height: 16.h,),
              const ConfirmPassword(),
              SizedBox(height: 4.h,),
              TextFormFieldWidget(
                borderRadius: 1.0,
                onChanged: (val){},
                hintText: '************',
                borderColor: ColorsManger.primary.withOpacity(0.6),
                password: true,
              ),
              SizedBox(height: 30.h,),
              ButtonWidget(
                radius: 10,
                title: 'register'.tr(),
                fontSize: 20,
                fontWeight: FontWeight.w700,
                onTap: (){},

              ),
              SizedBox(height: 20.h,),
              TextWidget(title: 'or'.tr(),fontSize:16.sp,fontWeight:FontWeight.w400,color: ColorsManger.primary,),
              SizedBox(height: 12.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FacebookIcon(),
                  SizedBox(width: 48.53.w,),
                  const GoogleIcon(),
                ],
              ),
              SizedBox(height: 12.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget(title: 'have an account?'.tr(),color: ColorsManger.blackColor,fontSize: 14.sp,fontWeight: FontWeight.w400),
                  TextButton(

                      onPressed: (){
                        // navigate to login screen
                        Navigator.of(context).pop();
                      },
                      child: TextWidget(title: 'login'.tr(),color: ColorsManger.primary,fontSize: 14.sp,fontWeight: FontWeight.w400)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ConfirmPassword extends StatelessWidget {
  const ConfirmPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(Icons.lock,color: ColorsManger.primary,),
        const SizedBox(width: 7,),
        TextWidget(title: 'confirm password'.tr(),fontSize: 16.sp,fontWeight: FontWeight.w400,color: ColorsManger.primary,),
      ],
    );
  }
}

class Password extends StatelessWidget {
  const Password({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(Icons.lock,color: ColorsManger.primary,),
        const SizedBox(width: 7,),
        TextWidget(title: 'password'.tr(),fontSize: 16.sp,fontWeight: FontWeight.w400,color: ColorsManger.primary,),
      ],
    );
  }
}

class Email extends StatelessWidget {
  const Email({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(Icons.email_rounded,color: ColorsManger.primary,),
        const SizedBox(width: 7,),
        TextWidget(title: 'email'.tr(),fontSize: 16.sp,fontWeight: FontWeight.w400,color: ColorsManger.primary,),
      ],
    );
  }
}

class UserName extends StatelessWidget {
  const UserName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(Icons.person,color: ColorsManger.primary,),
        const SizedBox(width: 7,),
        TextWidget(title: 'user name'.tr(),fontSize: 16.sp,fontWeight: FontWeight.w400,color: ColorsManger.primary,),
      ],
    );
  }
}
