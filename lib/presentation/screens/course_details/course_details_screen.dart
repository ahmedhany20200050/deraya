import 'dart:convert';

import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/core/constant/text_styles.dart';
import 'package:deraya_application/domain/models/courses/courses_model.dart';
import 'package:deraya_application/presentation/components/button_widget.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:deraya_application/presentation/screens/course_details/course_details_components/comment.dart';
import 'package:deraya_application/presentation/screens/course_details/course_details_components/comments_and_rating_view.dart';
import 'package:deraya_application/presentation/screens/course_details/course_details_components/contant_tab_view.dart';
import 'package:deraya_application/presentation/screens/home/widget/price_widget.dart';
import 'package:deraya_application/presentation/screens/login/login_screen.dart';
import 'package:deraya_application/presentation/screens/payments/payment_screen.dart';
import 'package:deraya_application/presentation/widgets/video_player_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'course_details_components/courses_tab_bar.dart';
import 'course_details_components/summary_tab_view.dart';
String? currentVideoLink;
YoutubePlayerController controller = YoutubePlayerController(
  initialVideoId: YoutubePlayer.convertUrlToId(currentVideoLink??" ")??"",
  flags: YoutubePlayerFlags(
    autoPlay: false,
  ),
);
bool ok=false;
class CourseDetailsScreen extends StatefulWidget {
  List<String> requirments = [
    // "لا يلزم على الطالب وجود خبرة سابقة في مجال التصميم ،فإن الدورة سوف تساعدك على التدريب باستمرار.",
    // "يلزم جهاز كمبيوتر أو نظام تشغيل مناسب للتعامل الجيد مع برنامج Adobe Photoshop في الدورة التدريبية.",
    // "يستحسن استخدام جهاز التحكم ( Mouse ) ، وذلك للتحكم الجيد مع البرنامج.",
  ];
  static const List<String> skills = [
    // "الأدوات في فوتوشوب",
    // 'تدرج الألوان',
    // "دمج الصور",
    'الأشكال',
    "النصوص المختلفة",
    "مهارات عامة ", // "المسافات وعمل تأثيرات",
    // "بطاطس وجمبها رز"
  ];
  int? id;
  List<Courses> data;
  late Courses course;
  CourseDetailsScreen(this.id, this.data,{super.key,this.paidSuccessfully=false}){
    for(var c in data){
      if(c.id==this.id){
        course=c;
        requirments.add(c.requirementAr!);
      }
    }
    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(currentVideoLink??" ")??"",
      flags: YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
  }
final bool paidSuccessfully;

  @override
  State<CourseDetailsScreen> createState() => _CourseDetailsScreenState(data: this.data,id: this.id,paidSuccessfully: this.paidSuccessfully,course: this.course,requirments: this.requirments);
}

class _CourseDetailsScreenState extends State<CourseDetailsScreen> {

  List<String> requirments = [
    // "لا يلزم على الطالب وجود خبرة سابقة في مجال التصميم ،فإن الدورة سوف تساعدك على التدريب باستمرار.",
    // "يلزم جهاز كمبيوتر أو نظام تشغيل مناسب للتعامل الجيد مع برنامج Adobe Photoshop في الدورة التدريبية.",
    // "يستحسن استخدام جهاز التحكم ( Mouse ) ، وذلك للتحكم الجيد مع البرنامج.",
  ];
  static const List<String> skills = [
    // "الأدوات في فوتوشوب",
    // 'تدرج الألوان',
    // "دمج الصور",
    'الأشكال',
    "النصوص المختلفة",
    "مهارات عامة ", // "المسافات وعمل تأثيرات",
    // "بطاطس وجمبها رز"
  ];
  int? id;
  List<Courses> data=[];
  late Courses course;
  _CourseDetailsScreenState({this.id, required this.data,this.paidSuccessfully=false,required this.requirments,required this.course}){
    for(var c in data){
      if(c.id==this.id){
        course=c;
        requirments.add(c.requirementAr!);
      }
    }
  }
  final bool paidSuccessfully;

  List<String>videosLinks=[];
  Future<void> getVideos()async {
    http.Response response=await http.get(
        Uri.parse("https://diraya.xyz/api/video/course-video/${course.id}"),
      headers: <String, String>{
        'Accept-Language': 'en',
        "Accept": "application/json",
        'Authorization': userUltraProMax?.token??"",
      },
    );
    if(response.statusCode==200){

      setState(() {
        ok=false;
        videosLinks.clear();
      });
      setState(() {
        dynamic json = jsonDecode(response.body)["data"];
        if (json["video"] != null) {
          for(var link in json["video"]){
            videosLinks.add(link["video"]);
          }
        }

        // controller=YoutubePlayerController(
        //   initialVideoId: YoutubePlayer.convertUrlToId(videosLinks[0])??"",
        //   flags: YoutubePlayerFlags(
        //     autoPlay: false,
        //   ),
        // );
      });
      setState(() {
        ok=true;
      });
      controller.load(YoutubePlayer.convertUrlToId(videosLinks[0])??"");
    }else{
      print("videos errorr ya ahmed");
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getVideos();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              16.ph,
              ok?YoutubePlayer(
                onReady: (){

                },
                controller: controller,
                showVideoProgressIndicator: true,
                progressIndicatorColor: AppColors.primary,
                bottomActions: [
                  CurrentPosition(),
                  ProgressBar(
                    isExpanded: true,
                    colors: ProgressBarColors(
                      playedColor: AppColors.primary,
                      backgroundColor: AppColors.lightBackground,
                    ),
                  ),
                ],
              ):Container(),
              // 16.ph,
              Padding(
                padding: EdgeInsets.all(16.0.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      title:widget.course.nameAr,
                      color: AppColors.primary,
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w600,
                      maxLines: 3,
                    ),
                    16.ph,
                    TextWidget(
                      title: "عن الكورس :",
                      color: AppColors.brownColor,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    16.ph,
                    TextWidget(
                      title:widget.course.descriptionAr,
                      color: AppColors.primary,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      maxLines:20,
                    ),
                    16.ph,
                    Row(
                      children: [
                        Card(
                          child: Container(
                            width: 80.w,
                            height: 40.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32.r),

                              // shape: BoxShape.circle,

                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.language_outlined,
                                    color: AppColors.primary),
                                4.pw,
                                TextWidget(
                                  title: "عريي",
                                  color: AppColors.primary,
                                  fontSize: 16.sp,
                                )
                              ],
                            ),
                          ),
                        ),
                        16.pw,
                        Card(
                          child: Container(
                            width: 140.w,
                            height: 40.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32.r),

                              // shape: BoxShape.circle,

                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.people_alt_outlined,
                                    color: AppColors.primary),
                                4.pw,
                                TextWidget(
                                  title: "5.545 طالب",
                                  color: AppColors.primary,
                                  fontSize: 16.sp,
                                )
                              ],
                            ),
                          ),
                        ),
                        16.pw,
                        Card(
                          child: Container(
                            width: 100.w,
                            height: 40.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32.r),

                              // shape: BoxShape.circle,

                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.star, color: Colors.amber),
                                8.pw,
                                TextWidget(
                                  title: "4.5",
                                  color: AppColors.primary,
                                  fontSize: 16.sp,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    20.ph,
                    //todo: tab bar
                    CoursesTabBar(),
                    SizedBox(
                      height: 20,
                    ),
                    AutoScaleTabBarView(
                      children: [
                      SummaryTabView(skills: CourseDetailsScreen.skills, requirments: requirments,course:widget.course),
                Column(
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
                          title: "${videosLinks.length} موضوع ",
                          fontSize: 16.sp,
                          color: AppColors.brownColor,
                        ),
                      ],
                    ),
                    ListView.builder(
                      itemBuilder: (_, index) {
                        return InkWell(
                          onTap: (){
                            if(index<2){
                              // controller.dispose();
                              controller.load(YoutubePlayer.convertUrlToId(videosLinks[index])??"");
                              // setState(() {
                              //   ok=false;
                              // });
                              // setState(() {
                              //   controller=YoutubePlayerController(
                              //     initialVideoId: YoutubePlayer.convertUrlToId(videosLinks[index])??"",
                              //     flags: YoutubePlayerFlags(
                              //       autoPlay: false,
                              //     ),
                              //   );
                              // });
                              // setState(() {
                              //   ok=true;
                              // });
                            }else{
                              if(paidSuccessfully){

                                controller.load(YoutubePlayer.convertUrlToId(videosLinks[index])??"");
                                // setState(() {
                                //   ok=false;
                                // });
                                // setState(() {
                                //   YoutubePlayerController(
                                //     initialVideoId: YoutubePlayer.convertUrlToId(videosLinks[index])??"",
                                //     flags: YoutubePlayerFlags(
                                //       autoPlay: false,
                                //     ),
                                //   );
                                // });
                                // setState(() {
                                //   ok=true;
                                // });
                              }
                            }

                          },
                          child: Padding(
                            padding:  EdgeInsets.all(16.0.w),
                            child: Container(
                              color: Colors.grey.shade100,
                              child: Row(
                                children: [
                                  Container(
                                    child: Icon(
                                      Icons.play_circle_outlined,
                                      color: AppColors.primary,
                                    ),
                                    width: 80.w,
                                    height: 80.h,
                                  ),
                                  8.pw,
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      TextWidget(
                                        title: "فيديو ${index+1} ",
                                        fontSize: 16.sp,
                                        color: AppColors.primary,

                                      ),
                                      16.ph,
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          // Icon(Icons.replay_30,color: AppColors.grayColor,),
                                          TextWidget(title: "22:30",color: AppColors.grayColor,fontSize: 14.sp,),
                                          160.pw,
                                          TextWidget(title: index<2?"فيديو مجاني":"فيديو مدفوع",color: AppColors.brownColor,fontSize: 14.sp,),

                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount:videosLinks.length,
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                    ),
                  ],
                ),
                      CommentsAndRatingView(),
                    ],),


                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
        bottomNavigationBar:widget.paidSuccessfully?null: Container(
          height: 100.h,
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 16.w),
            child: Row(
              children: [
                ButtonWidget(
                  width: 0.4.sw,
                  onTap: () {
                    Utils.openScreen(context,  PaymentScreen(courseId: widget.course.id!,));
                  },
                  radius: 12.r,
                  title: "شراء الكورس",
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w700,
                ),
                Spacer(),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 80.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                            color: AppColors.containerColor,
                            borderRadius: BorderRadius.circular(32.r),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 4.w),
                          child: Center(
                            child: TextWidget(
                              title: "E£${widget.course.price}",
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              fontSize: 16.sp,
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                    8.ph,
                    TextWidget(
                      title: "E£${double.parse(widget.course.price??"1")+100}",
                      maxLines: 2,
                      isOffer: true,
                      textAlign: TextAlign.center,
                      fontSize: 16.sp,
                      color: AppColors.primary,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}





