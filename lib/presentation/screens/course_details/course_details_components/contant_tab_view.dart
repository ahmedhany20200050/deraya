import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContentTabView extends StatelessWidget {
  const ContentTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.play_circle_outlined,
              color: AppColors.brownColor,
            ),
            6.pw,
            TextWidget(
              title: "15 موضوع ",
              fontSize: 16.sp,
              color: AppColors.brownColor,
            ),
          ],
        ),
        ListView.builder(
          itemBuilder: (_, index) {
            return Padding(
              padding:  EdgeInsets.all(16.0.w),
              child: Container(
                color: AppColors.primary,
                child: Row(
                  children: [
                    Image.network(
                      "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
                      fit: BoxFit.cover,
                      width: 80.w,
                      height: 80.h,
                    ),
                    8.pw,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextWidget(
                          title: "مقدمة عن برنامج Adobe Photoshop",
                          fontSize: 16.sp,
                          color: AppColors.primary,

                        ),
                        16.ph,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.replay_30,color: AppColors.grayColor,),
                            TextWidget(title: "22:30",color: AppColors.grayColor,fontSize: 14.sp,),
                           160.pw,
                            TextWidget(title: "فيديو مجاني",color: AppColors.brownColor,fontSize: 14.sp,),

                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: 6,
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
        ),
      ],
    );
  }
}
