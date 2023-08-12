import 'package:bloc/bloc.dart';
import 'package:deraya_application/presentation/screens/courses/courses_screen.dart';
import 'package:deraya_application/presentation/screens/home/home_screen.dart';
import 'package:deraya_application/presentation/screens/profile/profile_screem.dart';
import 'package:deraya_application/presentation/screens/search/search_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutStates> {
  HomeLayoutCubit() : super(HomeInitial());

  int currentState = 0;

  List<Widget> listScreens =
  [
    HomeScreen(),
    SearchScreen(),
    CoursesScreen(),
    ProfileScreen()


  ];

  void changeCurrentIndex(int index) {
    currentState = index;
    emit(HomeChangeNavigationBarState());
  }

  List<BottomNavigationBarItem> navigationBarItems =
  [
    BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.only(bottom: 4.h),
        child: Image.asset(
          "assets/images/home_inactive (2).png",
          width: 15.w,
          height: 15.w,
        ),
      ),
      activeIcon: Padding(
        padding: EdgeInsets.only(bottom: 4.h),
        child: Image.asset(
          "assets/images/Home_active (2).png",
          width: 15.w,
          height: 15.w,
        ),
      ),
      label: 'الرئيسة',
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.only(bottom: 4.h),
        child: Image.asset(
          "assets/images/search_inactive.png",
          width: 15.w,
          height: 15.w,
        ),
      ),
      activeIcon: Padding(
        padding: EdgeInsets.only(bottom: 4.h),
        child: Image.asset(
          "assets/images/search_active.png",
          width: 15.w,
          height: 15.w,
        ),
      ),
      label: 'البحث',
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.only(bottom: 4.h),
        child: Image.asset(
          "assets/images/course_inactive.png",
          width: 15.w,
          height: 15.w,
        ),
      ),
      activeIcon: Padding(
        padding: EdgeInsets.only(bottom: 4.h),
        child: Image.asset(
          "assets/images/course_inactive.png",
          width: 15.w,
          height: 15.w,
        ),
      ),
      label: 'courses'.tr(),
    ),
    BottomNavigationBarItem(
      icon: Padding(
        padding: EdgeInsets.only(bottom: 4.h),
        child: Image.asset(
          "assets/images/profile_inactive.png",
          width: 15.w,
          height: 15.w,
        ),
      ),
      activeIcon: Padding(
        padding: EdgeInsets.only(bottom: 4.h),
        child: Image.asset(
          "assets/images/profile_inactive.png",
          width: 15.w,
          height: 15.w,
        ),
      ),
      label: 'profile'.tr(),
    ),

  ];
}
