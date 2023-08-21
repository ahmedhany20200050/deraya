import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:deraya_application/presentation/screens/course_details/course_details_screen.dart';
import 'package:deraya_application/presentation/screens/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CurrentCoursesWidget extends StatelessWidget {
  const CurrentCoursesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        HomeCubit cubit =BlocProvider.of(context);
        final data = cubit.courseData?.courses;
        return SizedBox(
          height: 0.28.sh,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // Utils.openScreen(context, CourseDetailsScreen());
                  print(data?[index].nameEn);
                },
                child: Container(
                  // height: 60.h,
                  constraints: BoxConstraints(
                      maxWidth: 0.65.sw, minWidth: 0.6.sw),
                  child: Stack(
                    children: [
                      Image.network(data?[index].image??""),
                      Padding(
                        padding: EdgeInsets.only(top: 10.h,
                            left: 24.w,
                            right: 10.w),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  constraints: BoxConstraints(
                                      maxWidth: 0.45.sw, minWidth: 0.3.sw),
                                  child: TextWidget(
                                    title: data?[index].nameAr??"",
                                    maxLines: 2,
                                    textAlign: TextAlign.center,
                                    fontSize: 22.sp,
                                    color: Colors.black,
                                  ),
                                ),
                                10.pw,

                              ],
                            ),
                            32.ph,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextWidget(
                                  title: "${data?[index].lectures??""} تطبيقات",
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  fontSize: 16.sp,
                                  color: Colors.grey,
                                ),
                                Spacer(),
                                TextWidget(
                                  title: "${data?[index].lectures??""}  فيديو",
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  fontSize: 16.sp,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                            32.ph,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    TextWidget(
                                      title: "4.5",
                                      maxLines: 2,
                                      textAlign: TextAlign.center,
                                      fontSize: 16.sp,
                                      color: Colors.grey,
                                    ),
                                    5.pw,
                                    SvgPicture.asset("assets/images/star.svg")
                                  ],
                                ),
                                Spacer(),
                                TextWidget(
                                  title: "3.5kمشاهدات",
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  fontSize: 16.sp,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // LinearProgressIndicator(),
                    ],
                  ),
                ),
              );
            },
            // padding: EdgeInsets.all(16  .w),
            itemCount: data?.length,
            scrollDirection: Axis.horizontal,

          ),
        );
      },
    );
  }
}
