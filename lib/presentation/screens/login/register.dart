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

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController name=TextEditingController();

  TextEditingController email=TextEditingController();

  TextEditingController password=TextEditingController();

  TextEditingController repassword=TextEditingController();

  final GlobalKey<FormState> formKey =GlobalKey();

  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 40.w),
            child: Column(
              children: [
                SizedBox(height: 90.h,),
                TextWidget(title: 'welcome'.tr(),fontSize: 31.69.sp,fontWeight:FontWeight.w600,color: AppColors.primary,),
                SizedBox(height: 40.h,),
                const UserName(),
                SizedBox(height: 4.h,),
                TextFormFieldWidget(
                  controller: name,
                  borderRadius: 1.0,
                  onChanged: (val){},
                  hintText: 'Mostafa Ramadan',
                  borderColor: AppColors.primary.withOpacity(0.6),
                  textalign: TextAlign.end,
                  maxLengh: 50,
                ),
                SizedBox(height: 16.h,),
                const Email(),
                SizedBox(height: 4.h,),
                TextFormFieldWidget(
                  controller: email,
                  validate: (email){
                    if( RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(email!)==true&&email.contains(".com",email.length-5)) {
                      debugPrint('true');
                    } else{
                      Fluttertoast.showToast(
                          msg: "Enter valid email",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 2,
                          backgroundColor: AppColors.primary,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    }
                  },
                  borderRadius: 1.0,
                  onChanged: (val){},
                  hintText: 'info@example.com',
                  borderColor: AppColors.primary.withOpacity(0.6),
                  textalign: TextAlign.end,
                  maxLengh: 50,
                ),
                SizedBox(height: 16.h,),
                const Password(),
                SizedBox(height: 4.h,),
                TextFormFieldWidget(
                  controller: password,
                  borderRadius: 1.0,
                  onChanged: (val){},
                  hintText: '************',
                  borderColor: AppColors.primary.withOpacity(0.6),
                  password: true,
                  maxLengh: 50,
                ),
                SizedBox(height: 16.h,),
                const ConfirmPassword(),
                SizedBox(height: 4.h,),
                TextFormFieldWidget(
                  controller: repassword,
                  borderRadius: 1.0,
                  onChanged: (val){},
                  hintText: '************',
                  borderColor: AppColors.primary.withOpacity(0.6),
                  password: true,
                  maxLengh: 50,
                ),
                SizedBox(height: 32.h,),
                ButtonWidget(
                  radius: 10,
                  title: 'register'.tr(),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  onTap: ()async{
                    //todo: delete next line
                    var response=await http.post(
                      Uri.parse('http://diraya.xyz/api/user/signup'),
                      headers: <String, String>{
                        'Content-Type': 'application/json; charset=UTF-8',
                        "Accept": "application/json"
                      },
                      body: jsonEncode(<String, String>{
                        'email': email.text,
                        'password' : password.text,
                        'name':name.text,
                        'password_confirmation':repassword.text,
                      }),
                    );
                    if(formKey.currentState!.validate()){
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
                        Fluttertoast.showToast(
                            msg: "${Message.fromJson(jsonDecode(response.body)).m}",
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
                    }
                    else{
                      autovalidateMode=AutovalidateMode.always;
                      setState((){});
                    }


                    print("finish ya ahmed");
                    name.text="";
                    password.text="";
                    this.email.text="";
                    repassword.text="";
                  },

                ),
                SizedBox(height: 20.h,),
                TextWidget(title: 'or'.tr(),fontSize:16.sp,fontWeight:FontWeight.w400,color: AppColors.primary,),
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
                    TextWidget(title: 'have an account?'.tr(),color: AppColors.blackColor,fontSize: 14.sp,fontWeight: FontWeight.w400),
                    TextButton(

                        onPressed: (){
                          // navigate to login screen
                          Navigator.of(context).pop();
                        },
                        child: TextWidget(title: 'login'.tr(),color: AppColors.primary,fontSize: 14.sp,fontWeight: FontWeight.w400)),
                  ],
                ),
              ],
            ),
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
        const Icon(Icons.lock,color: AppColors.primary,),
        const SizedBox(width: 7,),
        TextWidget(title: 'confirm password'.tr(),fontSize: 16.sp,fontWeight: FontWeight.w400,color: AppColors.primary,),
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
        const Icon(Icons.lock,color: AppColors.primary,),
        const SizedBox(width: 7,),
        TextWidget(title: 'password'.tr(),fontSize: 16.sp,fontWeight: FontWeight.w400,color: AppColors.primary,),
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
        const Icon(Icons.email_rounded,color: AppColors.primary,),
        const SizedBox(width: 7,),
        TextWidget(title: 'email'.tr(),fontSize: 16.sp,fontWeight: FontWeight.w400,color: AppColors.primary,),
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
        const Icon(Icons.person,color: AppColors.primary,),
        const SizedBox(width: 7,),
        TextWidget(title: 'user name'.tr(),fontSize: 16.sp,fontWeight: FontWeight.w400,color: AppColors.primary,),
      ],
    );
  }
}
