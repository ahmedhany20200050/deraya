import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/presentation/layout/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeLayoutCubit(),
      child: BlocConsumer<HomeLayoutCubit, HomeLayoutStates>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          HomeLayoutCubit homeCubit = BlocProvider.of(context);
          return WillPopScope(onWillPop: () { return Future.value(false); },
          child: buildHomeView(homeCubit));
        },
      ),
    );
  }

  Widget buildHomeView(HomeLayoutCubit homeCubit)=> Scaffold(

    body: SafeArea(
      child: homeCubit.listScreens[homeCubit.currentState],
    ),
    bottomNavigationBar: BottomNavigationBar(
      items: homeCubit.navigationBarItems,
      currentIndex:homeCubit.currentState ,
      onTap: (index)
      {
        homeCubit.changeCurrentIndex(index);
      },
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.grayColor,
      type: BottomNavigationBarType.fixed,

      selectedFontSize: 14.sp,
      selectedLabelStyle: TextStyle(
          fontFamily: "cairo",
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.primary
      ),
      unselectedLabelStyle: TextStyle(
          fontFamily: "cairo",
          fontWeight: FontWeight.w600,
          fontSize: 14.sp
      ),
      unselectedFontSize: 14.sp,

    ),

  );
}
