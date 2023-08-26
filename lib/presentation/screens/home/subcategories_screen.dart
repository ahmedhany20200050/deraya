
import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/core/constant/text_styles.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:deraya_application/presentation/screens/home/widget/popular_courses.dart';
import 'package:deraya_application/presentation/screens/home/widget/price_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constant/colors.dart';
import '../../components/text_form_field.dart';

class SubcategoriesScreen extends StatelessWidget {
  const SubcategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    child: const SubcategoriesSearchBar(),
                  ),
                  24.ph,
                  TextWidget(
                    title: 'التصميم',
                    fontSize: 32.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                  16.ph,
                  TextWidget(
                    title: 'الأكثر مشاهدة عن التصميم',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                  8.ph,
                  SizedBox(
                    height: 0.45.h.sh,
                    child: const MostViewedListView(),
                  ),
                  24.ph,
                  TextWidget(
                    title: 'الأكثر بحثاً عن التصميم',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                  12.ph,
                   SizedBox(
                    height: 60.h,
                    child: const MostlySearch(),
                  ),
                   SizedBox(
                    height: 60.h,
                    child: const MostlySearch2(),
                  ),
                  SizedBox(
                    height: (MediaQuery.of(context).size.height * 0.15),
                    child: const InstructorsList(),
                  ),
                  50.ph,
                  Row(
                    children: [
                      TextWidget(
                        title: 'جميع الكورسات',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
                      const Spacer(),
                      TextWidget(
                        title: '5.656 نتيجة',
                        fontSize: 20.sp,
                        color: AppColors.brownColor,
                      ),
                      8.pw,
                    ],
                  ),
                ],
              ),
            ),
            SliverList(
              delegate:
                  SliverChildBuilderDelegate((BuildContext context, int index) {
                return Container(
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
                              Container(
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
                                        8.ph,
                                        Container(
                                          color: AppColors.lightBackground,
                                          child: const Row(
                                            children: [
                                              Icon(
                                                Icons.groups,
                                                color: AppColors.primary,
                                              ),
                                              TextWidget(
                                                  title: "1067 طالب",
                                                color: AppColors.primary,
                                              )
                                            ],
                                          ),
                                        )
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

class InstructorsList extends StatelessWidget {
  const InstructorsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return const InstructorListItem();
      },
      itemCount: 5,
      scrollDirection: Axis.horizontal,
    );
  }
}

class InstructorListItem extends StatelessWidget {
  const InstructorListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      elevation: 4,
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 35,
                  height: 35,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250"),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(),
                  ),
                ),
                4.pw,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const TextWidget(
                      title: "Ahmed Mohammed Hany",
                      color: AppColors.primary,
                    ),
                    4.ph,
                    const TextWidget(
                      title: "Figma&Photoshop",
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                    4.ph,
                    const Row(
                      children: [

                        TextWidget(
                          title: "Courses ",
                          color: Colors.grey,
                          fontSize: 12,
                        ),

                        TextWidget(
                          title: " 256  ",
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        Icon(
                          Icons.laptop_chromebook,
                          color: Colors.grey,
                          size: 12,
                        ),
                      ],
                    ),
                  ],
                )
              ].reversed.toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class MostViewedListView extends StatelessWidget {
  const MostViewedListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return const MostViewedItem();
      },
      itemCount: 3,
      scrollDirection: Axis.horizontal,
    );
  }
}

class MostViewedItem extends StatelessWidget {
  const MostViewedItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/2,
      height: MediaQuery.of(context).size.height/4,
   //   constraints: BoxConstraints(maxWidth: 0.6.sw, minWidth: 0.55.sw,minHeight: 316.h),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          offset: const Offset(15, 15),
          blurRadius: 30,
          spreadRadius: 0,
          color: const Color(0xFFD3D1D8).withOpacity(0.0625),
        ),
      ]),
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
                        width: 69.w,
                        height: 28.h,
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 8.w),
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                             TextWidget(
                              title: "(25+)",
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              fontSize: 8.19.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.grayColor,
                            ),
                            5.pw,
                             Icon(
                              Icons.star,
                              size: 9.5.sp,
                              color: const Color(0xffFFC529),
                            ),
                             TextWidget(
                              title: "4.5",
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primary,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    alignment: Alignment.center,
                    width: 28.w,
                    height: 28.h,
                    margin:
                         EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFFF4F4BD),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon:  Icon(
                          Icons.favorite_border,
                          size: 15.sp,
                          color: const Color(0xFFF4F4BD),
                        )),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.w),
            child: Column(
              children: [
                TextWidget(
                  title:
                      "كورس Figma بالكامل للمبتدأين - تعليم أساسيات التصميم.",
                  maxLines: 2,
                  textAlign: TextAlign.start,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                 CircleAvatar(
                  radius: 15.r,
                  backgroundImage: const AssetImage('assets/images/profile.jpg'),
                ),
                12.pw,
                 TextWidget(
                  title: 'Ali Wael',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFB48B8B),
                )
              ],
            ),
          ),
          12.ph,
          Row(
            children: [
              Container(
                width: 97.w,
                height: 29.h,
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Row(
                  children: [
                     Icon(
                      Icons.people_alt_outlined,
                      color: AppColors.primary,
                      size: 20.sp,
                    ),
                    5.pw,
                    TextWidget(
                      title: "1,067 طالب",
                      textAlign: TextAlign.center,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const PriceWidget(),
            ],
          ),
          12.ph,
          Row(
            children: [
              Container(
                width: 80.w,
                height: 29.h,
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Row(
                  children: [
                     Icon(
                      Icons.language_rounded,
                      color: AppColors.primary,
                      size: 18.sp,
                    ),
                    5.pw,
                    TextWidget(
                      title: "عربي",
                      textAlign: TextAlign.center,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding:  EdgeInsets.only(left: 16.0.w),
                child: TextWidget(
                  title: "E£999.99",
                  isOffer: true,
                  textAlign: TextAlign.center,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.blackColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MostlySearch2 extends StatelessWidget {
  const MostlySearch2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: [
          Container(
            constraints:  BoxConstraints(minWidth: 80.w),
            height: 38.h,
            margin:  EdgeInsets.symmetric(horizontal: 8.w),
            padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25.r),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 1),
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: const Color(0xFF000000).withOpacity(0.0625)),
              ],
            ),
            child:  FittedBox(
                child: TextWidget(
              title: 'Illustrator',
              color: AppColors.primary,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            )),
          ),
          Container(
            constraints:  BoxConstraints(minWidth: 55.w),
            height: 38.h,
            margin:  EdgeInsets.symmetric(horizontal: 8.w),
            padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25.r),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 1),
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: const Color(0xFF000000).withOpacity(0.0625)),
              ],
            ),
            child:  FittedBox(
                child: TextWidget(
              title: 'XD',
              color: AppColors.primary,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            )),
          ),
          Container(
            constraints:  BoxConstraints(minWidth: 55.w),
            height: 38.h,
            margin:  EdgeInsets.symmetric(horizontal: 8.w),
            padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25.r),
              boxShadow: [
                BoxShadow(
                    offset:  const Offset(0, 1),
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: const Color(0xFF000000).withOpacity(0.0625)),
              ],
            ),
            child:  FittedBox(
                child: TextWidget(
              title: 'واجهة المستخدم',
              color: AppColors.primary,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            )),
          ),
          Container(
            constraints:  BoxConstraints(minWidth: 55.w),
            height: 38.h,
            margin:  EdgeInsets.symmetric(horizontal: 8.w),
            padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25.r),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 1),
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: const Color(0xFF000000).withOpacity(0.0625)),
              ],
            ),
            child:  FittedBox(
                child: TextWidget(
              title: 'UX',
              color: AppColors.primary,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            )),
          ),
        ],
      ),
    );
  }
}

class MostlySearch extends StatelessWidget {
  const MostlySearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        children: [
          Container(
            constraints:  BoxConstraints(minWidth: 80.w),
            height: 38.h,
            margin:  EdgeInsets.symmetric(horizontal: 8.w),
            padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25.r),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 1),
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: const Color(0xFF000000).withOpacity(0.0625)),
              ],
            ),
            child:  FittedBox(
                child: TextWidget(
              title: 'Figma',
              color: AppColors.primary,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            )),
          ),
          Container(
            constraints:  BoxConstraints(minWidth: 80.w),
            height: 38.h,
            margin:  EdgeInsets.symmetric(horizontal: 8.w),
            padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 1),
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: const Color(0xFF000000).withOpacity(0.0625)),
              ],
            ),
            child:  FittedBox(
                child: TextWidget(
              title: 'Photoshop',
              color: AppColors.primary,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            )),
          ),
          Container(
            constraints:  BoxConstraints(minWidth: 80.w),
            height: 38.h,
            margin:  EdgeInsets.symmetric(horizontal: 8.w),
            padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25.r),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 1),
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: const Color(0xFF000000).withOpacity(0.0625)),
              ],
            ),
            child:  FittedBox(
                child: TextWidget(
              title: 'رسم',
              color: AppColors.primary,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            )),
          ),
          Container(
            constraints:  BoxConstraints(minWidth: 80.w, maxHeight: 40.h),
            height: 38.h,
            margin:  EdgeInsets.symmetric(horizontal: 8.w),
            padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25.r),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 1),
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: const Color(0xFF000000).withOpacity(0.0625)),
              ],
            ),
            child:  FittedBox(
                fit: BoxFit.fitWidth,
                child: TextWidget(
                  title: 'Web Design',
                  color: AppColors.primary,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                )),
          ),
          Container(
            constraints:  BoxConstraints(minWidth: 80.w),
            height: 38.h,
            margin:  EdgeInsets.symmetric(horizontal: 8.w),
            padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25.r),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 1),
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: const Color(0xFF000000).withOpacity(0.0625)),
              ],
            ),
            child:  FittedBox(
                child: TextWidget(
              title: 'Adobe PhotoShop',
              color: AppColors.primary,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            )),
          ),
          Container(
            constraints:  BoxConstraints(minWidth: 80.w),
            height: 38.h,
            margin:  EdgeInsets.symmetric(horizontal: 8.w),
            padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25.r),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 1),
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: const Color(0xFF000000).withOpacity(0.0625)),
              ],
            ),
            child:  FittedBox(
                child: TextWidget(
              title: 'Adobe PhotoShop',
              color: AppColors.primary,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            )),
          ),
          Container(
            constraints:  BoxConstraints(minWidth: 80.w),
            height: 38.h,
            margin:  EdgeInsets.symmetric(horizontal: 8.w),
            padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25.r),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 1),
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: const Color(0xFF000000).withOpacity(0.0625)),
              ],
            ),
            child:  FittedBox(
                child: TextWidget(
              title: 'Adobe PhotoShop',
              color: AppColors.primary,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            )),
          ),
        ],
      ),
    );
  }
}

class SubcategoriesSearchBar extends StatelessWidget {
  const SubcategoriesSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
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
          ),
        ),
        IconButton(
            onPressed: () {
              Navigator.of(context).pop();
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
