import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:deraya_application/presentation/screens/home/widget/price_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../course_details/course_details_screen.dart';
import '../cubit/home_cubit.dart';

class PopularCoursesWidget extends StatelessWidget {
  const PopularCoursesWidget({Key? key}) : super(key: key);

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
      height: MediaQuery.of(context).size.height*0.5,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              Utils.openScreen(context, CourseDetailsScreen(data?[index].id,data!));
            },
            child: Container(
              // height: 60.h,
              width: MediaQuery.of(context).size.width*0.7,
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                        child: Image.network(data?[index].image??"",
                          height: MediaQuery.of(context).size.height*0.25,
                          width: (MediaQuery.of(context).size.width*0.7)-5,
                          fit: BoxFit.fill,
                          color: Colors.black.withOpacity(0.5), colorBlendMode: BlendMode.darken,),
                      ),
                      Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 70.w,
                                height: 40.h,
                                margin: EdgeInsets.symmetric(horizontal: 10.w),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(32.r),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 26.w, vertical: 10.w),
                                child: Row(
                                  children: [
                                    TextWidget(
                                      title: "4.5",
                                      maxLines: 2,
                                      textAlign: TextAlign.center,
                                      fontSize: 16.sp,
                                      color: AppColors.primary,
                                    ),
                                    5.pw,
                                    const Icon(Icons.star,color: Colors.amber,size: 15,),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    Icons.favorite_border,
                                    color: Colors.brown,
                                  ))),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          title:
                          data?[index].nameAr??"",
                          maxLines: 2,
                          textAlign: TextAlign.start,
                          fontSize: 18.sp,
                          color: AppColors.primary,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      // Stack(
                      //   children: [
                      //     Container(
                      //       width: 120.w,
                      //       height: 60.h,
                      //       // margin: EdgeInsets.symmetric(
                      //       //     horizontal: 10.w
                      //       // ),
                      //
                      //       decoration: BoxDecoration(
                      //         color: AppColors.primary.withOpacity(0.2),
                      //         borderRadius: BorderRadius.circular(16.r),
                      //       ),
                      //     ),
                      //     Padding(
                      //       padding: EdgeInsets.symmetric(
                      //           horizontal: 10.w, vertical: 10.w),
                      //       child: Row(
                      //         children: [
                      //           const Icon(
                      //             Icons.people_alt_outlined,
                      //             color: AppColors.primary,
                      //           ),
                      //           5.pw,
                      //           TextWidget(
                      //             title: "1,067 طالب",
                      //             maxLines: 2,
                      //             textAlign: TextAlign.center,
                      //             fontSize: 16.sp,
                      //             color: AppColors.primary,
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // const Spacer(),
                    Container(
            width: 82.w,
            height: 28.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
            color: AppColors.containerColor,
            borderRadius: BorderRadius.circular(15.r),
            ),
            child:  TextWidget(
            title: data?[index].price??"",
            textAlign: TextAlign.center,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.blackColor,
            ),
            ),
                    ],
                  ),
                  10.ph,
                  Row(
                    children: [
                      // Stack(
                      //   children: [
                      //     Container(
                      //       width: 80.w,
                      //       height: 60.h,
                      //       // margin: EdgeInsets.symmetric(
                      //       //     horizontal: 10.w
                      //       // ),
                      //
                      //       decoration: BoxDecoration(
                      //         color: AppColors.primary.withOpacity(0.2),
                      //         borderRadius: BorderRadius.circular(16.r),
                      //       ),
                      //     ),
                      //     Padding(
                      //       padding: EdgeInsets.symmetric(
                      //           horizontal: 10.w, vertical: 10.w),
                      //       child: Row(
                      //         children: [
                      //           const Icon(
                      //             Icons.language_rounded,
                      //             color: AppColors.primary,
                      //           ),
                      //           5.pw,
                      //           TextWidget(
                      //             title: "عربي",
                      //             maxLines: 2,
                      //             textAlign: TextAlign.center,
                      //             fontSize: 16.sp,
                      //             color: AppColors.primary,
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // const Spacer(),

                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 16.w),
                        child: Center(
                          child: TextWidget(
                            title: "${double.parse(data![index].price??"100")+100}",
                            maxLines: 2,
                            isOffer:true,
                            textAlign: TextAlign.center,
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: data?.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  },
);
  }
}
