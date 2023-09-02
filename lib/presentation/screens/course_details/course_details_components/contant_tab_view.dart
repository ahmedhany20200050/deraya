import 'dart:convert';

import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/domain/models/courses/courses_model.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:deraya_application/presentation/screens/course_details/course_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class ContentTabView extends StatefulWidget {
  late Courses course;
   ContentTabView(Courses course, {super.key}){
     this.course=course;
   }

  @override
  State<ContentTabView> createState() => _ContentTabViewState(this.course);
}

class _ContentTabViewState extends State<ContentTabView> {
  Courses course;
  _ContentTabViewState(this.course);
  List<String>videosLinks=['https://youtu.be/6QAELgirvjs?si=8YK-c-dvjIL1c0Uj'];
  Future<void> getVideos()async {
    http.Response response=await http.get(Uri.parse("https://diraya.xyz/api/video/course-video/${course.id}"));
    if(response.statusCode==200){
      setState(() {
        dynamic json = jsonDecode(response.body)["data"];
        if (json["video"] != null) {
          for(var link in json["video"]){
            videosLinks.add(link["video"]);
          }
        }
        controller=YoutubePlayerController(
          initialVideoId: YoutubePlayer.convertUrlToId(videosLinks[0])??"",
          flags: YoutubePlayerFlags(
            autoPlay: false,
          ),
        );
      });
      currentVideoLink=videosLinks[0];
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
                currentVideoLink=videosLinks[index];
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
                            title: "مقدمة عن برنامج Adobe Photoshop",
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
                              TextWidget(title: "فيديو مجاني",color: AppColors.brownColor,fontSize: 14.sp,),

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
    );
  }
}
