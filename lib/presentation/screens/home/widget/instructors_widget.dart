import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:deraya_application/presentation/screens/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InstructorWidget extends StatelessWidget {
  const InstructorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        HomeCubit cubit = BlocProvider.of(context);
        final instructor = cubit.instructorData?.instructor;
        return SizedBox(
            height: 0.25.sh,
            child: ListView.builder(
              itemBuilder: (_, index) {
                return Padding(
                  padding: EdgeInsets.only(left: 8.0.w, top: 16.h),
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            instructor?[index].image ?? ""),
                        radius: 80.r,
                      ),
                      16.ph,
                      TextWidget(
                        title:  instructor?[index].name??"",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.primary,
                      ),
                    ],
                  ),
                );
              },
              itemCount: instructor?.length,
              scrollDirection: Axis.horizontal,
            ));
      },
    );
  }
}
