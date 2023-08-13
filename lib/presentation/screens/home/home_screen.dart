import 'package:animate_do/animate_do.dart';
import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/presentation/components/text_form_field.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:deraya_application/presentation/screens/home/widget/build_current_courses.dart';
import 'package:deraya_application/presentation/screens/home/widget/category_widget.dart';
import 'package:deraya_application/presentation/screens/home/widget/definition_row.dart';
import 'package:deraya_application/presentation/screens/home/widget/instructors_widget.dart';
import 'package:deraya_application/presentation/screens/home/widget/popular_courses.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

              title: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      "assets/images/avatar.png",
                    ),
                    radius: 30.r,
                  ),
                  16.pw,
                  TextWidget(
                    title: "اهلا يوسف",
                    fontSize: 16.sp,
                  ),
                ],
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                    ))
              ],
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
                      const DefinitionRow(
                        title: "الفئات",
                        subTitle: "جميع الفئات",
                      ),
                      const CategoryWidget(),
                      const DefinitionRow(
                        title: "الدورات الحالية",
                        subTitle: "الكل",
                      ),
                      16.ph,
                      CurrentCoursesWidget(),
                      16.ph,
                      const DefinitionRow(
                        title: "أشهر المدربين لدينا",
                        subTitle: "الكل",
                      ),
                      InstructorWidget(),
                      const DefinitionRow(
                        title: "الكورسات الأكثر مشاهدة",
                        subTitle: "الكل",
                      ),
                      8.ph,
                      PopularCoursesWidget(),



                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
