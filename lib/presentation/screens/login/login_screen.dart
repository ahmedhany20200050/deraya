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
            appBar: AppBar(
              title: TextWidget(
                ///.tr stand for the translation
                title: 'Login'.tr(),
                /// .sp is for the responsive of the font
                fontSize: 18.sp,
              ),
            ),
            body: Column(),
          );
        },
      ),
    );
  }
}
