import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/presentation/components/button_widget.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:deraya_application/presentation/widgets/video_player_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CourseDetailsScreen extends StatelessWidget {
  const CourseDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.ios_share),
          ),
        ],
      ),
      body: Column(
        children: [
          16.ph,
          const VideoReview(
            url:
                "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
          ),
          // 16.ph,
          Padding(
            padding:  EdgeInsets.all(16.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  title:
                      "كورس Photoshop بالكامل للمبتدأين ،وتعليم أساسيات التصميم والأدوات.",
                  color: AppColors.primary,
                  fontSize: 26.sp,
                  fontWeight: FontWeight.w600,
                  maxLines: 3,
                ),
                16.ph,
                TextWidget(
                  title:
                      "عن الكورس :",
                  color: AppColors.brownColor,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w600,

                ),
                16.ph,
                TextWidget(
                  title:
                      "يُعدّ فوتوشوب من البرامج الأكثر استخداماً من قِبَل المُصممين، ومطوري المواقع الإلكترونية، ومصممي الجرافيك، والمصورين، وأصحاب المهن الإبداعيّة الأخرى، حيث يُوفر لهم العديد من المزايا والأدوات للقيام بالعديد من المهام.",
                  color: AppColors.primary,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  maxLines: 4,

                ),
              ],
            ),
          )
        ],
      ),
       bottomNavigationBar: Container(
         height:100.h ,
         color: Colors.white,

         child: Row(
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 16.w

                ),
                child: ButtonWidget(
                  width: 0.4.sw,
                  onTap: (){},
                  radius: 12.r,
                  title: "شراء الكورس",
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Column(
                children: [

                ],
              )

            ],
         ),
       ),
    );
  }
}
