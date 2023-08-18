import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/constant/colors.dart';
import '../../components/text_form_field.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            50.ph,
            SizedBox(
              height: 55.h,
              child: const SearchBar(),

            ),
            24.ph,
            TextWidget(title: "all categories".tr(),fontSize: 20.sp,fontWeight: FontWeight.w700,color: AppColors.primary,),
            8.ph,
            TextWidget(title: "categories def".tr(),fontSize: 16.sp,fontWeight: FontWeight.w600,color: AppColors.primary,),
           16.ph,
            Expanded(
                child: GridView.builder(
                    itemCount: 10, // Number of items in the grid
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 20,
                    ),
                    itemBuilder: (context,index)=>const CategoryItem())),
          ],
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 181.h,
      width: 188.w,
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration:  BoxDecoration(
        boxShadow: [
          BoxShadow(color: const Color(0xFF000010).withOpacity(.3),blurRadius: 8,),
        ],
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage('https://img.freepik.com/premium-photo/judge-gavel-with-justice-lawyers-having-team-meeting-law-firm-background_1418-2111.jpg?size=626&ext=jpg&uid=R76923949&ga=GA1.1.409472889.1674466048&semt=sph'),),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Container(
        height: 60.h,
        width: double.infinity,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white38,
                  Colors.black54,
                  Colors.black54,
                  Colors.black87,
                ]),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  padding: EdgeInsets.only(right: 20.w),
                 color: Colors.white,
                 highlightColor: Colors.white,
                  onPressed: (){}, icon: const Icon(Icons.arrow_back_ios,)),
              const TextWidget(title: 'القانون',fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white,),
            ],
          )),
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
        IconButton(onPressed: (){
          Navigator.of(context).pop();
        },
            padding: EdgeInsets.zero,
            icon: const Icon(Icons.arrow_back,color: AppColors.primary,)),
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
      ],
    );
  }
}
