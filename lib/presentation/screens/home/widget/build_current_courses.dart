import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:deraya_application/presentation/screens/course_details/course_details_screen.dart';
import 'package:deraya_application/presentation/screens/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CurrentCoursesWidget extends StatelessWidget {
  const CurrentCoursesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        HomeCubit cubit =BlocProvider.of(context);
        final data = cubit.courseData?.courses;
        return SizedBox(
          height: 0.28.sh,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Card(
                    child: GestureDetector(
                      onTap: () {
                        Utils.openScreen(context, CourseDetailsScreen(data?[index].id,data!));
                        print(data?[index].nameEn);
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        clipBehavior: Clip.antiAlias,

                        child: Container(
                          // height: 60.h,
                          width: MediaQuery.of(context).size.height*0.38,
                          height: MediaQuery.of(context).size.height*0.25,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                                child: Image.network(data?[index].image??"",
                                  fit: BoxFit.fill,
                                  color: Colors.black.withOpacity(0.5), colorBlendMode: BlendMode.darken,),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 16,
                                    left: 12,
                                    right: 36,
                                bottom: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Wrap(
                                      children:[
                                        Text(data?[index].nameAr??"",
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          textAlign: TextAlign.left,
                                          maxLines: 2,

                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    // 16.ph,
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Expanded(
                                          child: RotatedBox(
                                            quarterTurns: 2,
                                              child: SliderTheme(
                                                  data: SliderTheme.of(context).copyWith(
                                                    overlayShape: SliderComponentShape.noOverlay,
                                                    trackShape: RectangularSliderTrackShape(),
                                                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.0,),
                                                  ),
                                                  child: Container(
                                                      width:double.infinity,child: Slider(inactiveColor: AppColors.containerColor.withOpacity(0.5),value: 0.8, onChanged: (val){},activeColor: Color(0xFFF4D4BD))))),
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    // 16.ph,
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        TextWidget(
                                          title: "${data?[index].lectures??""} تطبيقات",
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                          fontSize: 13,
                                          color: Colors.white,
                                        ),
                                        const Spacer(),
                                        TextWidget(
                                          title: "${data?[index].lectures??""}  فيديو",
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                          fontSize: 13,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    // 16.ph,
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
                                              fontSize: 13,
                                              color: Colors.white,
                                            ),
                                            5.pw,
                                            const Icon(Icons.star,color: Colors.amber,size: 15,)
                                          ],
                                        ),
                                        const Spacer(),
                                        TextWidget(
                                          title: " مشاهدات 3.5k",
                                          maxLines: 2,
                                          textAlign: TextAlign.center,
                                          fontSize: 13,
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
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
            // padding: EdgeInsets.all(16  .w),
            itemCount: data?.length,
            scrollDirection: Axis.horizontal,

          ),
        );
      },
    );
  }
}
