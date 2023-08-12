import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CurrentCoursesWidget extends StatelessWidget {
  const CurrentCoursesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.28.sh,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            // height: 60.h,
            constraints: BoxConstraints(maxWidth: 0.65.sw, minWidth: 0.6.sw),
            child: Stack(
              children: [
                Image.asset("assets/images/backGround.png"),
                Padding(
                  padding: EdgeInsets.only(top: 10.h, left: 16.w, right: 16.w),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            constraints: BoxConstraints(
                                maxWidth: 0.45.sw, minWidth: 0.3.sw),
                            child: TextWidget(
                              title: "Fundamental  of Google Ui/Ux Designs",
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              fontSize: 22.sp,
                              color: Colors.white,
                            ),
                          ),
                          10.pw,
                          Image.asset("assets/images/google.png"),
                        ],
                      ),
                      32.ph,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextWidget(
                            title: "10 تطبيقات",
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            fontSize: 16.sp,
                            color: Colors.white,
                          ),
                          Spacer(),
                          TextWidget(
                            title: "28  فيديو",
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            fontSize: 16.sp,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      32.ph,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextWidget(
                                title: "4.5",
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                fontSize: 16.sp,
                                color: Colors.white,
                              ),
                              5.pw,
                              SvgPicture.asset("assets/images/star.svg")
                            ],
                          ),
                          Spacer(),
                          TextWidget(
                            title: "3.5kمشاهدات",
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            fontSize: 16.sp,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // LinearProgressIndicator(),
              ],
            ),
          );
        },
        // padding: EdgeInsets.all(16  .w),
        itemCount: 3,
        scrollDirection: Axis.horizontal,

      ),
    );
  }
}
