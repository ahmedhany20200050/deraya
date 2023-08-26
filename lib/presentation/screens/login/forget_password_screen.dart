import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../core/Utils/utils.dart';
import '../../../core/constant/colors.dart';
import '../../components/button_widget.dart';
import '../../components/text_form_field.dart';
import '../../components/text_widget.dart';
import '../../layout/home_layout.dart';
import 'login_screen.dart';
import 'package:http/http.dart' as http;

class ForgetPasswordScreen extends StatelessWidget {
   ForgetPasswordScreen({Key? key}) : super(key: key);
  late TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 40.w),
          child: Column(
            children: [
              SizedBox(height: 90.h,),
              TextWidget(title: 'forget password!'.tr(),fontSize: 31.69.sp,fontWeight:FontWeight.w600,color: AppColors.primary,),
              SizedBox(height: 50.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.email_rounded,color: AppColors.primary,),
                  const SizedBox(width: 7,),
                  TextWidget(title: 'email'.tr(),fontSize: 16.sp,fontWeight: FontWeight.w400,color: AppColors.primary,),
                ],
              ),
              SizedBox(height: 4.h,),
              TextFormFieldWidget(
                borderRadius: 1.0,
                onChanged: (val){},
                hintText: 'info@example.com',
                borderColor: AppColors.primary.withOpacity(0.6),
                textalign: TextAlign.end,
                controller: email,
                maxLengh: 50,
              ),
              SizedBox(height: 40.49.h,),
              ButtonWidget(
                radius: 10,
                title: 'reset password'.tr(),
                fontSize: 20,
                fontWeight: FontWeight.w600,
                onTap: ()async{
                  //todo: delete next line
                  http.Response response=await http.post(
                    Uri.parse('http://diraya.xyz/api/user/check-email'),
                    headers: <String, String>{
                      'Content-Type': 'application/json; charset=UTF-8',
                      "Accept": "application/json"
                    },
                    body: jsonEncode(<String, String>{
                      'email': email.text??" ",
                    }),
                  );

                    print("hiiii\n"+response.toString());
                    //var message=jsonDecode(response.body)['message'];
                    Fluttertoast.showToast(
                        msg: "${Message.fromJson(jsonDecode(response.body)).m} ",
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 2,
                        backgroundColor: AppColors.primary,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                    print('error ya ahmed');

                  print("finish ya ahmed");

                },
              ),
              SizedBox(height: 50.h,),
              TextWidget(title: 'or'.tr(),fontSize:16.sp,fontWeight:FontWeight.w400,color: AppColors.primary,),
              SizedBox(height: 52.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FacebookIcon(),
                  SizedBox(width: 48.53.w,),
                  const GoogleIcon(),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
