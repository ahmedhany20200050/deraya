import 'package:deraya_application/core/constant/assets.dart';
import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/presentation/components/button_widget.dart';
import 'package:deraya_application/presentation/components/text_form_field.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:deraya_application/presentation/screens/login/cubit/login_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          LoginCubit cubit = BlocProvider.of(context);
          return Scaffold(
            body:SingleChildScrollView(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 32.w),
                child: Column(
                  children: [
                     SizedBox(height: 90.h,),
                    TextWidget(title: 'welcome'.tr(),fontSize: 31.69.sp,fontWeight:FontWeight.w600,color: ColorsManger.primary,),
                     SizedBox(height: 50.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.email_rounded,color: ColorsManger.primary,),
                        const SizedBox(width: 7,),
                        TextWidget(title: 'email'.tr(),fontSize: 16.sp,fontWeight: FontWeight.w400,color: ColorsManger.primary,),
                      ],
                    ),
                     SizedBox(height: 4.h,),
                    TextFormFieldWidget(
                      borderRadius: 1.0,
                      onChanged: (val){},
                      hintText: 'info@example.com',
                      borderColor: ColorsManger.primary.withOpacity(0.6),
                      textalign: TextAlign.end,

                    ),
                     SizedBox(height: 16.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.lock,color: ColorsManger.primary,),
                        const SizedBox(width: 7,),
                        TextWidget(title: 'password'.tr(),fontSize: 16.sp,fontWeight: FontWeight.w400,color: ColorsManger.primary,),
                      ],
                    ),
                     SizedBox(height: 4.h,),
                    TextFormFieldWidget(
                      borderRadius: 1.0,
                      onChanged: (val){},
                      hintText: 'password',
                      borderColor: ColorsManger.primary.withOpacity(0.6),
                      password: true,
                    ),
                     SizedBox(height: 4.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (val){},
                          side: const BorderSide(color: ColorsManger.primary,width: 1,),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4),),
                        ),
                        TextWidget(title: 'rememberMe'.tr(),fontSize: 13.86.sp,fontWeight: FontWeight.w400,color: ColorsManger.primary,),
                        const Spacer(),
                        TextWidget(title: 'forget password'.tr(),fontSize: 13.86.sp,fontWeight: FontWeight.w400,color: ColorsManger.primary,),
                      ],
                    ),
                     SizedBox(height: 70.h,),
                    ButtonWidget(
                      radius: 10,
                      title: 'login'.tr(),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      onTap: (){},

                    ),
                     SizedBox(height: 32.h,),
                    TextWidget(title: 'or'.tr(),fontSize:16.sp,fontWeight:FontWeight.w400,color: ColorsManger.primary,),
                     SizedBox(height: 23.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 49.h,
                          width: 59.w,
                          alignment: Alignment.center,
                          decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: const Border.fromBorderSide(BorderSide(color:ColorsManger.primary,width: 2 )),
                            color: Colors.white,
                          ),
                          child: Icon(Icons.facebook_rounded,color: Colors.blue.shade700,)
                        ),
                        SizedBox(width: 48.53.w,),
                        const GoogleButton(),
                      ],
                    ),
                    SizedBox(height: 63.59.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget(title: 'create new account?'.tr(),color: ColorsManger.blackColor,fontSize: 14.sp,fontWeight: FontWeight.w400),
                        TextWidget(title: 'create account'.tr(),color: ColorsManger.primary,fontSize: 14.sp,fontWeight: FontWeight.w400),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 49.h,
      width: 59.w,
      alignment: Alignment.center,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: const Border.fromBorderSide(BorderSide(color:ColorsManger.primary,width: 2 )),
        color: Colors.white,
      ),
      child: Image.asset(Assets.kGoogleIcon,height: 29.h,width: 29.w,),
    );
  }
}
