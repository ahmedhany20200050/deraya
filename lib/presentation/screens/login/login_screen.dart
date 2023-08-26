import 'dart:convert';

import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/core/constant/assets.dart';
import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/presentation/components/button_widget.dart';
import 'package:deraya_application/presentation/components/text_form_field.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:deraya_application/presentation/layout/home_layout.dart';
import 'package:deraya_application/presentation/screens/home/home_screen.dart';
import 'package:deraya_application/presentation/screens/login/cubit/login_cubit.dart';
import 'package:deraya_application/presentation/screens/login/forget_password_screen.dart';
import 'package:deraya_application/presentation/screens/login/register.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

User? userUltraProMax;
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController email= TextEditingController();
  late TextEditingController password= TextEditingController();
  @override
  Widget build(BuildContext context) {
        return Scaffold(
          body:SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 40.w),
              child: Column(
                children: [
                   SizedBox(height: 90.h,),
                  TextWidget(title: 'welcome back'.tr(),fontSize: 31.69.sp,fontWeight:FontWeight.w600,color: AppColors.primary,),
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
                    maxLengh: 50,
                    controller: email,
                    onChanged: (val){},
                    hintText: 'info@example.com',

                  ),
                   SizedBox(height: 16.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.lock,color: AppColors.primary,),
                      const SizedBox(width: 7,),
                      TextWidget(title: 'password'.tr(),fontSize: 16.sp,fontWeight: FontWeight.w400,color: AppColors.primary,),
                    ],
                  ),
                   SizedBox(height: 4.h,),
                  TextFormFieldWidget(
                    borderRadius: 1.0,
                    controller: password,
                    onChanged: (val){},
                    hintText: 'password',
                    borderColor: AppColors.primary.withOpacity(0.6),
                    password: true,
                    maxLengh: 50,
                  ),
                   SizedBox(height: 4.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (val){},
                        side: const BorderSide(color: AppColors.primary,width: 1,),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4),),
                      ),
                      TextWidget(title: 'rememberMe'.tr(),fontSize: 13.86.sp,fontWeight: FontWeight.w400,color: AppColors.primary,),
                      const Spacer(),
                      TextButton(
                          onPressed: (){
                            // navigate to forget password screen
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  ForgetPasswordScreen() , ),);
                          },
                          child: TextWidget(title: 'forget password'.tr(),fontSize: 13.86.sp,fontWeight: FontWeight.w400,color: AppColors.primary,)),
                    ],
                  ),
                   SizedBox(height: 70.h,),
                  ButtonWidget(
                    radius: 10,
                    title: 'login'.tr(),
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    onTap: ()async{
                      //todo: delete next line
                      http.Response response=await http.post(
                        Uri.parse('http://diraya.xyz/api/user/login'),
                        headers: <String, String>{
                          'Content-Type': 'application/json; charset=UTF-8',
                          "Accept": "application/json"
                        },
                        body: jsonEncode(<String, String>{
                          'email': email.text??" ",
                          'password' : password.text??" ",
                        }),
                      );
                      try{


                        User u=User.fromJson(jsonDecode(response.body));
                        userUltraProMax=u;
                        print("success");
                        Fluttertoast.showToast(
                            msg: "Welcome ${u.name}",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 2,
                            backgroundColor: AppColors.primary,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );
                        Utils.openScreen(context, HomeLayout());
                      }catch(e){
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
                        print(e);
                      }
                      print("finish ya ahmed");

                    },

                  ),
                   SizedBox(height: 32.h,),
                  TextWidget(title: 'or'.tr(),fontSize:16.sp,fontWeight:FontWeight.w400,color: AppColors.primary,),
                   SizedBox(height: 23.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const FacebookIcon(),
                      SizedBox(width: 48.53.w,),
                      const GoogleIcon(),
                    ],
                  ),
                  SizedBox(height: 10.59.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(title: 'create new account?'.tr(),color: AppColors.blackColor,fontSize: 14.sp,fontWeight: FontWeight.w400),
                      TextButton(
                          onPressed: (){
                            // navigate to register screen
                            ///old way
                            // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const RegisterScreen() , ),);
                            ///new way
                            Utils.openScreen(context, RegisterScreen());
                          },
                          child: TextWidget(title: 'create account'.tr(),color: AppColors.primary,fontSize: 14.sp,fontWeight: FontWeight.w400)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
  }
}
class Message {
  final String m;

  const Message({required this.m});

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      m: json['message']
    );
  }
}
class User {
  final String name;
  final String email;

  const User({required this.name, required this.email});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['data']['user']['name'],
      email: json['data']['user']['email'],
    );
  }
}

class FacebookIcon extends StatelessWidget {
  const FacebookIcon({
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
        border: const Border.fromBorderSide(BorderSide(color:AppColors.primary,width: 2 )),
        color: Colors.white,
      ),
      child: Icon(FontAwesomeIcons.facebookF,color: Colors.blue.shade800,)
    );
  }
}

class GoogleIcon extends StatelessWidget {
  const GoogleIcon({
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
        border: const Border.fromBorderSide(BorderSide(color:AppColors.primary,width: 2 )),
        color: Colors.white,
      ),
      child: Image.asset(Assets.kGoogleIcon,height: 29.h,width: 29.w,),
    );
  }
}
