import 'package:deraya_application/core/Utils/utils.dart';
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
        padding:  EdgeInsets.only(right:19.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            50.ph,
            const SizedBox(
              height: 45,
              child: SubcategoriesSearchBar(),

            ),
            24.ph,
             TextWidget(title: 'التصميمم',fontSize: 32.sp,fontWeight: FontWeight.bold,color: AppColors.primary,),
            16.ph,
            TextWidget(title: 'الأكثر مشاهدة عن التصميم',fontSize: 20.sp,fontWeight: FontWeight.bold,color: AppColors.primary,),
            8.ph,
            SizedBox(
              height: 0.38.sh,
              child: const MostViewedListView(),
            ),
            24.ph,
            TextWidget(title: 'الأكثر بحثاً عن التصميم',fontSize: 20.sp,fontWeight: FontWeight.bold,color: AppColors.primary,),
            12.ph,
            const SizedBox(
              height: 60,
              child: MostlySearch(),
            ) ,
            const SizedBox(
              height: 60,
              child: MostlySearch2(),
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
       width: 266.w,
       height: 316.h,
     // constraints: BoxConstraints(maxWidth: 0.65.sw, minWidth: 0.6.sw),
      decoration: BoxDecoration(
        boxShadow:[
          BoxShadow(
          offset: const Offset(15, 15),
            blurRadius: 30,
            spreadRadius: 0,
            color: const Color(0xFFD3D1D8).withOpacity(0.0625),
        ),]
      ),
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
                        margin:  EdgeInsets.symmetric(horizontal: 8.w),
                        padding:  EdgeInsets.symmetric(horizontal: 4.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100.r),
                        ),
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const TextWidget(
                              title: "(25+)",
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              fontSize: 8.19,
                              fontWeight: FontWeight.w400,
                              color: AppColors.grayColor,
                            ),
                            5.pw,
                            const Icon(Icons.star,size: 9.5,color: Color(0xffFFC529),),
                            const TextWidget(
                              title: "4.5",
                              maxLines: 1,
                              textAlign: TextAlign.center,
                              fontSize: 12,
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
                    width:28,
                    height:28,
                    margin:const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                    decoration: BoxDecoration(

                      border: Border.all(
                        color: const Color(0xFFF4F4BD),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: IconButton(
                      padding:EdgeInsets.zero,
                        onPressed: () {},
                        icon: const Icon(

                          Icons.favorite_border,
                          size: 15,
                          color: Color(0xFFF4F4BD),
                        )),
                  ),
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
           Row(
            children: [
              const    CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
              12.pw,
              const TextWidget(title: 'Ali Wael',fontSize:16 ,fontWeight: FontWeight.bold,color:Color(0xFFB48B8B) ,)
            ],
          ),
          12.ph,
          Row(
            children: [
              Container(
                width: 97,
                height: 29,
                 padding: EdgeInsets.symmetric(
                    horizontal: 10.w
                ),

                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.people_alt_outlined,
                      color: AppColors.primary,
                      size: 20,
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
          16.ph,
          Row(
            children: [
              Container(
                width: 80,
                height: 29,
                padding: EdgeInsets.symmetric(
                    horizontal: 10.w
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.language_rounded,
                      color: AppColors.primary,
                      size: 18,
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
                padding: const EdgeInsets.only(left:16.0),
                child: TextWidget(
                  title: "E£999.99",
                  isOffer:true,
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
      physics:const BouncingScrollPhysics(),
      child: Row(
        children: [
          Container(
            constraints: const BoxConstraints(minWidth: 80),
            height: 40,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 4),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0,1),
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: const Color(0xFF000000).withOpacity(0.0625)
                ),
              ],
            ),
            child: const FittedBox(child: TextWidget(title:  'Illustrator',color: AppColors.primary,fontSize: 16,fontWeight: FontWeight.w600,)),
          ),
          Container(
            constraints: const BoxConstraints(minWidth: 55),
            height: 38,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 4),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0,1),
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: const Color(0xFF000000).withOpacity(0.0625)
                ),
              ],
            ),
            child: const FittedBox(child: TextWidget(title:  'XD',color: AppColors.primary,fontSize: 16,fontWeight: FontWeight.w600,)),
          ),
          Container(
            constraints: const BoxConstraints(minWidth: 55),
            height: 38,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 4),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0,1),
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: const Color(0xFF000000).withOpacity(0.0625)
                ),
              ],
            ),
            child: const FittedBox(child: TextWidget(title:  'واجهة المستخدم',color: AppColors.primary,fontSize: 16,fontWeight: FontWeight.w600,)),
          ),
          Container(
            constraints: const BoxConstraints(minWidth: 55),
            height: 38,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 4),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0,1),
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: const Color(0xFF000000).withOpacity(0.0625)
                ),
              ],
            ),
            child: const FittedBox(child: TextWidget(title:  'UX',color: AppColors.primary,fontSize: 16,fontWeight: FontWeight.w600,)),
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
      physics:const BouncingScrollPhysics(),
      child: Row(
        children: [
          Container(
            constraints: const BoxConstraints(minWidth: 80),
            height: 40,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 4),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0,1),
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: const Color(0xFF000000).withOpacity(0.0625)
                ),
              ],
            ),
            child: const FittedBox(child: TextWidget(title:  'Figma',color: AppColors.primary,fontSize: 16,fontWeight: FontWeight.w600,)),
          ),
          Container(
            constraints: const BoxConstraints(minWidth: 80),
            height: 38,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 4),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0,1),
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: const Color(0xFF000000).withOpacity(0.0625)
                ),
              ],
            ),
            child: const FittedBox(child: TextWidget(title:  'Photoshop',color: AppColors.primary,fontSize: 16,fontWeight: FontWeight.w600,)),
          ),
          Container(
            constraints: const BoxConstraints(minWidth: 80),
            height: 38,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 4),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0,1),
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: const Color(0xFF000000).withOpacity(0.0625)
                ),
              ],
            ),
            child: const FittedBox(child: TextWidget(title:  'رسم',color: AppColors.primary,fontSize: 16,fontWeight: FontWeight.w600,)),
          ),
          Container(
            constraints: const BoxConstraints(minWidth: 80,maxHeight: 40),
            height: 38,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 4),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0,1),
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: const Color(0xFF000000).withOpacity(0.0625)
                ),
              ],
            ),
            child: const FittedBox(
              fit: BoxFit.fitWidth,
                child: TextWidget(title:  'Web Design',color: AppColors.primary,fontSize: 16,fontWeight: FontWeight.w600,)),
          ),
          Container(
            constraints: const BoxConstraints(minWidth: 80),
            height: 38,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 4),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0,1),
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: const Color(0xFF000000).withOpacity(0.0625)
                ),
              ],
            ),
            child: const FittedBox(child: TextWidget(title:  'Adobe PhotoShop',color: AppColors.primary,fontSize: 16,fontWeight: FontWeight.w600,)),
          ),
          Container(
            constraints: const BoxConstraints(minWidth: 80),
            height: 38,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 4),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0,1),
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: const Color(0xFF000000).withOpacity(0.0625)
                ),
              ],
            ),
            child: const FittedBox(child: TextWidget(title:  'Adobe PhotoShop',color: AppColors.primary,fontSize: 16,fontWeight: FontWeight.w600,)),
          ),
          Container(
            constraints: const BoxConstraints(minWidth: 80),
            height: 38,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 4),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0,1),
                    blurRadius: 4,
                    spreadRadius: 0,
                    color: const Color(0xFF000000).withOpacity(0.0625)
                ),
              ],
            ),
            child: const FittedBox(child: TextWidget(title:  'Adobe PhotoShop',color: AppColors.primary,fontSize: 16,fontWeight: FontWeight.w600,)),
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
        IconButton(onPressed: (){
          Navigator.of(context).pop();
        },
            padding: EdgeInsets.zero,
            icon:  const Icon(Icons.arrow_back,color: AppColors.primary,size: 21,)),
        Expanded(
          child: TextFormFieldWidget(
            onChanged: (e) {},
            borderRadius: 20,
            hintText: "ابحث عن الدورات",
            suffixIcon: Icon(
              Icons.search,
              color: AppColors.primary,
              // size: 25.w,
              weight: 25.w,
            ),
          ),
        ),
        IconButton(onPressed: (){
          Navigator.of(context).pop();
        },
            padding: EdgeInsets.zero,
            icon:  Icon(Icons.sort,color: AppColors.primary,size: 38.h,textDirection: TextDirection.ltr,)),
      ],
    );
  }
}
