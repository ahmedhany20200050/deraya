import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:deraya_application/presentation/screens/home/widget/price_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PopularCoursesWidget extends StatelessWidget {
  const PopularCoursesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.4.sh,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            // height: 60.h,
            constraints: BoxConstraints(maxWidth: 0.65.sw, minWidth: 0.6.sw),
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset("assets/images/course_image.png"),
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
                                  SvgPicture.asset("assets/images/star.svg")
                                ],
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: CircleAvatar(
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
                    children: [
                      TextWidget(
                        title:
                            "التغذية الصحية للحامل والمرضع ، وطرق الرعاية الصحيحة",
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
                    Stack(
                      children: [
                        Container(
                          width: 120.w,
                          height: 60.h,
                          // margin: EdgeInsets.symmetric(
                          //     horizontal: 10.w
                          // ),

                          decoration: BoxDecoration(
                            color: AppColors.primary.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10.w),
                          child: Row(
                            children: [
                              Icon(
                                Icons.people_alt_outlined,
                                color: AppColors.primary,
                              ),
                              5.pw,
                              TextWidget(
                                title: "1,067 طالب",
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                fontSize: 16.sp,
                                color: AppColors.primary,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    PriceWidget(),
                  ],
                ),
                10.ph,
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 80.w,
                          height: 60.h,
                          // margin: EdgeInsets.symmetric(
                          //     horizontal: 10.w
                          // ),

                          decoration: BoxDecoration(
                            color: AppColors.primary.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10.w),
                          child: Row(
                            children: [
                              Icon(
                                Icons.language_rounded,
                                color: AppColors.primary,
                              ),
                              5.pw,
                              TextWidget(
                                title: "عربي",
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                fontSize: 16.sp,
                                color: AppColors.primary,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Spacer(),

                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 16.w),
                      child: Center(
                        child: TextWidget(
                          title: "E£999.99",
                          maxLines: 2,
                          isOffer:true,
                          textAlign: TextAlign.center,
                          fontSize: 16.sp,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        itemCount: 3,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
