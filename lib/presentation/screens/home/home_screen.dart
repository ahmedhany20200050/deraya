import 'dart:convert';

import 'package:animate_do/animate_do.dart';
import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/presentation/components/text_form_field.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:deraya_application/presentation/screens/categories/category_screen.dart';
import 'package:deraya_application/presentation/screens/home/cubit/home_cubit.dart';
import 'package:deraya_application/presentation/screens/home/widget/build_current_courses.dart';
import 'package:deraya_application/presentation/screens/home/widget/category_widget.dart';
import 'package:deraya_application/presentation/screens/home/widget/definition_row.dart';
import 'package:deraya_application/presentation/screens/home/widget/popular_courses.dart';
import 'package:deraya_application/presentation/screens/login/login_screen.dart';
import 'package:deraya_application/presentation/screens/search/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){return Future.value(false);},
      child: BlocProvider(
        create: (context) => HomeCubit()
          ..geSubcategories()
          ..getCourses()
        ..getUserCourses(),
          // ..getInstructors(),
        child: BlocConsumer<HomeCubit, HomeStates>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return (state is HomeGetUserCoursesSuccessState)||(state is HomeGetCoursesSuccessState)|| (state is HomeGetCategoriesSuccessState)||(state is HomeGetInstructorSuccessState)  ?Scaffold(
              body: SafeArea(
                child: CustomScrollView(
                  key: const Key("Home"),
                  primary: true,
                  slivers: [
                    SliverAppBar(
                      pinned: true,
                      expandedHeight: 200.0.h,
                      foregroundColor: Colors.white,
                      backgroundColor: AppColors.primary,
                      leading: CircleAvatar(
                        backgroundImage: const AssetImage(
                          "assets/images/avatar.png",
                        ),
                        radius: 2.r,
                      ),
                      title:Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextWidget(
                            title:
                                "اهلا ${userUltraProMax?.name == null ? "none" : userUltraProMax?.name}",
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      actions: [
                        IconButton(
                            onPressed: () {

                              //set up the buttons
                              Widget cancelButton = TextButton(
                                child: Text("لا"),
                                onPressed:  () {
                                  Navigator.pop(context);
                                },
                              );
                              Widget continueButton = TextButton(
                                child: Text("نعم"),
                                onPressed:  () async{
                                  http.Response response=await http.post(
                                    Uri.parse('http://diraya.xyz/api/user/deleteAccount/${userUltraProMax?.id??-1}'),
                                    headers: <String, String>{
                                      'Content-Type': 'application/json; charset=UTF-8',
                                      "Accept": "application/json",
                                      'Authorization': '${userUltraProMax?.token}',
                                    },
                                    body: jsonEncode(<String, String>{

                                    }),
                                  );
                                  Fluttertoast.showToast(
                                      msg: "${Message.fromJson(jsonDecode(response.body)).m} ",
                                      toastLength: Toast.LENGTH_LONG,
                                      gravity: ToastGravity.CENTER,
                                      timeInSecForIosWeb: 2,
                                      backgroundColor: AppColors.primary,
                                      textColor: Colors.white,
                                      fontSize: 16.0
                                  );
                                  final SharedPreferences prefs = await SharedPreferences.getInstance();
                                  await prefs.setBool("rememberMe", false);
                                  await prefs.setString('email', "");
                                  await prefs.setString('password', "");
                                  await prefs.setString('name', "");
                                  await prefs.setString('token', "");
                                  await prefs.setInt('id', -1);
                                  Utils.openScreen(context, const LoginScreen());
                                },
                              );

                              // set up the AlertDialog
                              AlertDialog alert = AlertDialog(
                                title: Text("انتبه!"),
                                content: Text("أنت علي وشك حذف الحساب والخروج. هل تريد إكمال العملية؟"),
                                actions: [
                                  cancelButton,
                                  continueButton
                                ],
                              );

                              // show the dialog
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return alert;
                                },
                              );

                            },
                            icon: const Icon(
                              Icons.no_accounts_outlined,
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: () {

                              // set up the buttons
                              Widget cancelButton = TextButton(
                                child: Text("لا"),
                                onPressed:  () {
                                  Navigator.pop(context);
                                },
                              );
                              Widget continueButton = TextButton(
                                child: Text("نعم"),
                                onPressed:  () async{
                                  final SharedPreferences prefs= await SharedPreferences.getInstance();
                                  await prefs.setBool("rememberMe", false);
                                  await prefs.setString('email', "");
                                  await prefs.setString('password', "");
                                  Utils.openScreen(context, LoginScreen());
                                },
                              );

                              // set up the AlertDialog
                              AlertDialog alert = AlertDialog(
                                title: Text("انتبه!"),
                                content: Text("أنت علي وشك تسجيل الخروج. هل تريد إكمال العملية؟"),
                                actions: [
                                  cancelButton,
                                  continueButton
                                ],
                              );

                              // show the dialog
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return alert;
                                },
                              );

                            },
                            icon: const Icon(
                              Icons.logout,
                              color: Colors.white,
                            )),
                      ],
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(30),
                      )),
                      flexibleSpace: FlexibleSpaceBar(
                        background: FadeIn(
                          duration: const Duration(milliseconds: 500),
                          child: ShaderMask(
                            shaderCallback: (rect) {
                              return const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.transparent,
                                  Colors.white,
                                  Colors.white,
                                  Colors.transparent,
                                ],
                                stops: [0.0, 0.5, 2.0, 1.0],
                              ).createShader(
                                Rect.fromLTRB(0.0, 0.0, rect.width, rect.height),
                              );
                            },
                            blendMode: BlendMode.dstIn,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 0.10.sh,
                                  ),
                                  SizedBox(
                                    width: .95.sw,
                                    child: TextFormFieldWidget(
                                      onChanged: (e) {},
                                      onTap: () {
                                        Utils.openScreen(
                                            context, const SearchScreen());
                                      },
                                      // borderRadius: 0,

                                      hintText: "ابحث عن الدورات",

                                      suffixIcon: Icon(
                                        Icons.search,
                                        color: AppColors.primary,
                                        size: 25.w,
                                        // weight: 25.w,
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: FadeInUp(
                        // animate: true,
                        child: Padding(
                          padding: EdgeInsets.all(16.0.w),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DefinitionRow(
                                title: "الفئات",
                                subTitle: "جميع الفئات",
                                secondOnTap: () {
                                  Utils.openScreen(
                                      context,
                                      CategoryScreen(
                                          HomeCubit.get(context)
                                          .subcategoriesModel!.subcategory!,
                                      ));
                                },
                              ),
                              const CategoryWidget(),
                              if(state is HomeGetUserCoursesSuccessState)
                              16.ph,
                              if(state is HomeGetUserCoursesSuccessState)
                              DefinitionRow(
                                title: "الدورات الحالية",
                                subTitle: "",
                              ),
                              if(state is HomeGetUserCoursesSuccessState)
                              16.ph,
                              if(state is HomeGetUserCoursesSuccessState)
                              const CurrentCoursesWidget(),
                              16.ph,
                              // DefinitionRow(
                              //   title: "أشهر المدربين لدينا",
                              //   subTitle: "الكل",
                              // ),
                              // const InstructorWidget(),
                              DefinitionRow(
                                title: "الكورسات الأكثر مشاهدة",
                                subTitle: "",
                              ),
                              8.ph,
                              const PopularCoursesWidget(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ):Scaffold();
          },
        ),
      ),
    );
  }
}
