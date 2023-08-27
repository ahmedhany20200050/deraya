import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:deraya_application/presentation/screens/home/cubit/home_cubit.dart';
import 'package:deraya_application/presentation/screens/home/subcategories_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../category_screen.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        HomeCubit cubit =BlocProvider.of(context);
        final data = cubit.categoriesModel?.categories;
        return SizedBox(

          height: 0.41.sh,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 1.w / 1.7.w,
                mainAxisSpacing: 10.h,
                crossAxisSpacing: 10.w


            ),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  InkWell(
                    onTap:(){
                      Utils.openScreen(context, const SubcategoriesScreen());
                    },
                    child: CircleAvatar(
                      backgroundImage:  NetworkImage(
                        data?[index].image??"",
                      ),
                      radius: 60.r,
                    ),
                  ),
                  14.ph,
                  TextWidget(
                    title: data?[index].nameAr??"",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    maxLines: 1,
                  )
                ],
              );
            },
            itemCount: cubit.categoriesModel?.categories?.length,

          ),
        );
      },
    );
  }
}
