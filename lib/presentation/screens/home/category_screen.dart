import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:deraya_application/presentation/screens/home/subcategories_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constant/colors.dart';
import '../../../domain/models/category_model/categories_model.dart';
import '../../components/text_form_field.dart';
import '../search/search_screen.dart';

class CategoryScreen extends StatelessWidget {
  List<Categories>c;

  CategoryScreen(this.c,{Key? key}) : super(key: key);

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
                    itemCount: this.c.length, // Number of items in the grid
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 20,
                    ),
                    itemBuilder: (context,index)=> CategoryItem(this.c[index]))),
          ],
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  Categories c= Categories();
  CategoryItem(this.c, {
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
        image:  DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage('${this.c.image}'),),
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
                  onPressed: (){
                    Utils.openScreen(context, SubcategoriesScreen());
                  }, icon:  Icon(Icons.arrow_back_ios,)),
              TextWidget(title: this.c.nameAr,fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white,),
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
            onTap: () {
              Utils.openScreen(
                  context, const SearchScreen());
            },
          ),
        ),
      ],
    );
  }
}
