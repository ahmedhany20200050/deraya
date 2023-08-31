import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/core/constant/text_styles.dart';
import 'package:deraya_application/domain/models/courses/courses_model.dart';
import 'package:deraya_application/presentation/components/button_widget.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:deraya_application/presentation/screens/course_details/course_details_components/comment.dart';
import 'package:deraya_application/presentation/screens/course_details/course_details_components/comments_and_rating_view.dart';
import 'package:deraya_application/presentation/screens/course_details/course_details_components/contant_tab_view.dart';
import 'package:deraya_application/presentation/screens/home/widget/price_widget.dart';
import 'package:deraya_application/presentation/widgets/video_player_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'course_details_components/courses_tab_bar.dart';
import 'course_details_components/summary_tab_view.dart';

class CourseDetailsScreen extends StatelessWidget {
  List<String> requirments = [
    // "لا يلزم على الطالب وجود خبرة سابقة في مجال التصميم ،فإن الدورة سوف تساعدك على التدريب باستمرار.",
    // "يلزم جهاز كمبيوتر أو نظام تشغيل مناسب للتعامل الجيد مع برنامج Adobe Photoshop في الدورة التدريبية.",
    // "يستحسن استخدام جهاز التحكم ( Mouse ) ، وذلك للتحكم الجيد مع البرنامج.",
  ];
  static const List<String> skills = [
    // "الأدوات في فوتوشوب",
    // 'تدرج الألوان',
    // "دمج الصور",
    // 'الأشكال',
    // "النصوص المختلفة",
    // "المسافات وعمل تأثيرات",
    // "بطاطس وجمبها رز"
  ];
  int? id;
  List<Courses> data;
  late Courses course;
  CourseDetailsScreen(this.id, this.data,{super.key}){
    for(var c in data){
      if(c.id==this.id){
        course=c;
        requirments.add(c.requirementAr!);
      }
    }
  }


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.ios_share),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              16.ph,
              VideoReview(
                url:
                    course.video??"",
              ),
              // 16.ph,
              Padding(
                padding: EdgeInsets.all(16.0.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      title:course.nameAr,
                      color: AppColors.primary,
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w600,
                      maxLines: 3,
                    ),
                    16.ph,
                    TextWidget(
                      title: "عن الكورس :",
                      color: AppColors.brownColor,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    16.ph,
                    TextWidget(
                      title:course.descriptionAr,
                      color: AppColors.primary,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      maxLines: 4,
                    ),
                    16.ph,
                    Row(
                      children: [
                        Card(
                          child: Container(
                            width: 80.w,
                            height: 40.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32.r),

                              // shape: BoxShape.circle,

                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.language_outlined,
                                    color: AppColors.primary),
                                4.pw,
                                TextWidget(
                                  title: "عريي",
                                  color: AppColors.primary,
                                  fontSize: 16.sp,
                                )
                              ],
                            ),
                          ),
                        ),
                        16.pw,
                        Card(
                          child: Container(
                            width: 140.w,
                            height: 40.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32.r),

                              // shape: BoxShape.circle,

                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.people_alt_outlined,
                                    color: AppColors.primary),
                                4.pw,
                                TextWidget(
                                  title: "5.545 طالب",
                                  color: AppColors.primary,
                                  fontSize: 16.sp,
                                )
                              ],
                            ),
                          ),
                        ),
                        16.pw,
                        Card(
                          child: Container(
                            width: 100.w,
                            height: 40.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32.r),

                              // shape: BoxShape.circle,

                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star, color: Colors.amber),
                                8.pw,
                                TextWidget(
                                  title: "4.5",
                                  color: AppColors.primary,
                                  fontSize: 16.sp,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    20.ph,
                    //todo: tab bar
                    CoursesTabBar(),
                    SizedBox(
                      height: 20,
                    ),
                    AutoScaleTabBarView(
                      children: [
                      SummaryTabView(skills: skills, requirments: requirments,course:course),
                        ContentTabView(),
                      CommentsAndRatingView(),
                    ],),


                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 100.h,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.w),
            child: Row(
              children: [
                ButtonWidget(
                  width: 0.4.sw,
                  onTap: () {},
                  radius: 12.r,
                  title: "شراء الكورس",
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w700,
                ),
                Spacer(),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 80.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                            color: AppColors.containerColor,
                            borderRadius: BorderRadius.circular(32.r),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 4.w),
                          child: Center(
                            child: TextWidget(
                              title: "E£${course.price}",
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              fontSize: 16.sp,
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                    8.ph,
                    TextWidget(
                      title: "E£${course.price}",
                      maxLines: 2,
                      isOffer: true,
                      textAlign: TextAlign.center,
                      fontSize: 16.sp,
                      color: AppColors.primary,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}





