import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            TextWidget(title: "all categories".tr(),fontSize: 20.sp,fontWeight: FontWeight.w700,color: ColorsManger.primary,),
            8.ph,
            TextWidget(title: "categories def".tr(),fontSize: 16.sp,fontWeight: FontWeight.w600,color: ColorsManger.primary,),

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
        IconButton(onPressed: (){
          Navigator.of(context).pop();
        },
            padding: EdgeInsets.zero,
            icon: const Icon(Icons.arrow_back,color: ColorsManger.primary,)),
        Expanded(
          child: TextFormFieldWidget(
            onChanged: (e) {},
             borderRadius: 20,
            hintText: "ابحث عن الدورات",
            suffixIcon: Icon(
              Icons.search,
              color: ColorsManger.primary,
              // size: 25.w,
              weight: 25.w,
            ),
          ),
        ),
      ],
    );
  }
}
