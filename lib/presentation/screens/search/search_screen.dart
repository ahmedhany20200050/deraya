import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:deraya_application/presentation/layout/cubit/home_cubit.dart';
import 'package:deraya_application/presentation/layout/home_layout.dart';
import 'package:deraya_application/presentation/screens/home/cubit/home_cubit.dart';
import 'package:deraya_application/presentation/screens/search/filtter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/colors.dart';
import '../../../core/constant/text_styles.dart';
import '../../components/text_form_field.dart';
import '../home/subcategories_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Padding(
        padding: EdgeInsets.only(right: 19.0.w),
        child: CustomScrollView(

          physics: const ClampingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  50.ph,
                  SizedBox(
                    height: 45.h,
                    child: const SearchBar(),
                  ),
                  24.ph,
                ],
              ),
            ),
            SliverList(
              delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width-200,
                  height: (MediaQuery.of(context).size.height*0.225)+10,
                  child: Card(
                    elevation: 4,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    margin: const EdgeInsets.all(8),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            fit: StackFit.loose,
                            children: [
                              Container(
                                width: 140,
                                height: (MediaQuery.of(context).size.height*0.225)-20,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                child: Image.asset(
                                    fit: BoxFit.fill,
                                    "assets/images/course_image.png"),
                              ),
                              SizedBox(
                                width: 140,
                                child: Padding(
                                  padding: const EdgeInsets.only(top:8.0),
                                  child: Row(
                                    children: [
                                      8.pw,
                                      Container(
                                        padding: const EdgeInsets.all(4),
                                        decoration: ShapeDecoration(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                        ),
                                        child:const Row(
                                          children: [
                                            TextWidget(
                                              title: "(25+)",
                                              fontSize: 10,
                                            ),
                                            Icon(
                                              Icons.star_rate_rounded,
                                              size: 12,
                                              color: Colors.amber,
                                            ),
                                            TextWidget(
                                              title: "4.5",
                                              fontSize: 10,
                                            ),

                                          ],
                                        ) ,
                                      ),
                                      const Spacer(),
                                      Container(
                                        padding: const EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: Colors.white),
                                          borderRadius:  BorderRadius.circular(100),
                                        ),
                                        child: const Icon(
                                          Icons.favorite_border_outlined,
                                          color: Colors.white,
                                          size: 16,
                                        ),
                                      ),
                                      8.pw,
                                    ],
                                  ),
                                ),
                              )

                            ],
                          ),
                          const Spacer(),
                          SizedBox(
                            width: MediaQuery.of(context).size.width-200,
                            height: MediaQuery.of(context).size.height*0.225,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TextWidget(
                                  title: "كورس Figma بالكامل للمبتدأين - تعليم أساسيات التصميم.",
                                  maxLines: 2,
                                  color: AppColors.primary,
                                  fontSize: 16,
                                ),
                                8.ph,
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 30,
                                              height: 30,
                                              decoration: const ShapeDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage("https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250"),
                                                  fit: BoxFit.fill,
                                                ),
                                                shape: OvalBorder(),
                                              ),
                                            ),
                                            4.pw,
                                            Text("Ali Wael",style: TextStyles.brownTextStyle,),
                                          ],
                                        ),

                                      ],
                                    ),
                                    const Spacer(),
                                    Column(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(6),
                                          decoration: ShapeDecoration(
                                            color: const Color(0xFFF4D4BD),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                          ),
                                          child: const TextWidget(
                                            title: "E£999.99",
                                            fontSize: 16,
                                          ),
                                        ),
                                        8.ph,
                                        const TextWidget(
                                          title: "E£1500",
                                          fontSize: 16,
                                          isOffer: true,
                                        )
                                      ],
                                    ),

                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              // HomeLayoutCubit homeCubit = BlocProvider.of(context);
              // homeCubit.changeCurrentIndex(0);
              Navigator.of(context).pop();
            },
            padding: EdgeInsets.zero,
            icon:  Icon(
              Icons.arrow_back,
              color: AppColors.primary,
              size: 21.sp,
            )),
        Expanded(
          child: TextFormFieldWidget(
            onChanged: (e) {},
            borderRadius: 20.r,
            hintText: "ابحث عن الدورات",
            suffixIcon: Icon(
              Icons.search,
              color: AppColors.primary,
              // size: 25.w,
              weight: 25.w,
            ),
            onTap: () {
            },
          ),
        ),
        IconButton(
            onPressed: () {
              Utils.openScreen(context, FilterScreen());
            },
            padding: EdgeInsets.zero,
            icon: Icon(
              Icons.sort,
              color: AppColors.primary,
              size: 38.h,
              textDirection: TextDirection.ltr,
            )),
      ],
    );
  }
}

