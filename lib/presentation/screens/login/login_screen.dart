import 'package:deraya_application/core/constant/colors.dart';
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
                    const SizedBox(height: 90,),
                    TextWidget(title: 'welcome'.tr(),fontSize: 31.69.sp,fontWeight:FontWeight.w600,color: ColorsManger.primary,),
                    const SizedBox(height: 50,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.email_rounded,color: ColorsManger.primary,),
                        const SizedBox(width: 7,),
                        TextWidget(title: 'email'.tr(),fontSize: 16.sp,fontWeight: FontWeight.w400,color: ColorsManger.primary,),
                      ],
                    ),
                    const SizedBox(height: 4,),
                    TextFormFieldWidget(
                      borderRadius: 1.0,
                      onChanged: (val){},
                      hintText: 'info@example.com',
                      borderColor: ColorsManger.primary.withOpacity(0.6),
                      textalign: TextAlign.end,

                    ),
                    const SizedBox(height: 16,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.lock,color: ColorsManger.primary,),
                        const SizedBox(width: 7,),
                        TextWidget(title: 'password'.tr(),fontSize: 16.sp,fontWeight: FontWeight.w400,color: ColorsManger.primary,),
                      ],
                    ),
                    const SizedBox(height: 4,),
                    TextFormFieldWidget(
                      borderRadius: 1.0,
                      onChanged: (val){},
                      hintText: 'password',
                      borderColor: ColorsManger.primary.withOpacity(0.6),
                      password: true,
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
