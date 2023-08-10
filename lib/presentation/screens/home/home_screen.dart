import 'package:animate_do/animate_do.dart';
import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/presentation/components/text_form_field.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        key: const Key("Home"),
        primary: true,
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 200.0.h,
            foregroundColor: ColorsManger.primary,
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
                        120.ph,
                        SizedBox(
                          width: .95.sw,
                          child: TextFormFieldWidget(
                            onChanged: (e) {},
                            // borderRadius: 0,

                            hintText: "ابحث عن الدورات",

                            suffixIcon: Icon(
                              Icons.search,
                              color: ColorsManger.primary,
                              // size: 25.w,
                              weight: 25.w,
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
                  children: [
                    Row(children: [
                      TextWidget(
                        title: "الفئات",
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        color: ColorsManger.primary,
                      ),
                      Spacer(),
                      TextWidget(
                        title: "جميع الفئات",
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: ColorsManger.brownColor,
                      ),
                    ]),
                    SizedBox(

                      height: 1200.h,
                      child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            childAspectRatio: 1,

                          ),
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                            CircleAvatar(
                            backgroundImage: AssetImage(
                            "assets/images/low.png",
                            ),
                            radius: 45.r,
                            )  ,
                                14.ph,
                                TextWidget(
                                  title: "القانون",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,

                                )
                              ],
                            );
                          },
                      itemCount: 8,
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
