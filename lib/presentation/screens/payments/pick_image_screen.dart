import 'dart:convert';
import 'dart:io';

import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/presentation/components/button_widget.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:deraya_application/presentation/screens/login/login_screen.dart';
import 'package:deraya_application/presentation/screens/payments/payment_screen.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;


class PickImageScreen extends StatefulWidget {
  const PickImageScreen({Key? key}) : super(key: key);

  @override
  State<PickImageScreen> createState() => _PickImageScreenState();
}

class _PickImageScreenState extends State<PickImageScreen> {
  TextEditingController phoneController=TextEditingController();
  File? _selectedImage;
  void selectImage()async{
    File? image=await pickImageFromGallery(context);
    if(image!=null){
      _selectedImage=image;
      setState(() {

      });
    }
  }
  Future<File ?>pickImageFromGallery(BuildContext context)async{
    File? image;
    try{
      final pickedImage=await ImagePicker().pickImage(source: ImageSource.gallery);

      if(pickedImage != null){
        image=File(pickedImage.path);
      }
    }
    catch(e){
      print(e);
    }
    return image;
  }
  // Future<void> requestPermissionsAndPickImage() async {
  //   // Request camera and gallery permissions.
  //   final cameraStatus = await Permission.camera.request();
  //   final galleryStatus = await Permission.photos.request();
  //
  //   if (cameraStatus.isGranted && galleryStatus.isGranted) {
  //     // You have the required permissions to access the camera and gallery.
  //     // You can now proceed to pick an image.
  //     final picker = ImagePicker();
  //     final pickedFile = await picker.pickImage(source: ImageSource.gallery);
  //
  //     if (pickedFile != null) {
  //       // The user picked an image.
  //       setState(() {
  //         _selectedImage = File(pickedFile.path);
  //       });
  //     } else {
  //       // The user canceled the image picker.
  //     }
  //   } else {
  //     // The user denied one or both permissions.
  //     // You should handle this situation by showing a message or taking appropriate action.
  //   }
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 18.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            50.ph,
            const CustomAppbar(title:'upload image'),
            24.ph,
            DottedBorder(
              color: AppColors.primary,
              strokeWidth: 2,
              radius: Radius.circular(10),
              borderType: BorderType.RRect,
              dashPattern: [9, 9, 9, 9],
              child: SizedBox(
                height: 110.h,
                width: double.infinity,
                child: _selectedImage==null ?Column(
                  children: [
                    IconButton(onPressed:selectImage, icon: Icon(Icons.cloud_upload_outlined,color: AppColors.primary,size: 30.sp,)),
                    TextWidget(title: 'قم بتحميل صورة الوصل ',fontSize: 16.sp,fontWeight: FontWeight.w700,color: AppColors.primary,),
                   4.ph,
                    TextWidget(title: 'يجب أن تكون صورة الوصل والأرقام واضحة',fontSize: 16.sp,fontWeight: FontWeight.w500,color: AppColors.grayColor,),
                  ],
                ):SizedBox(
                  height: 80.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    8.pw,
                  Image.asset('assets/images/Group 18356.png',width: 48,height: 48,),
                    8.pw,
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(title: 'Photo.Png',fontSize: 16.sp,fontWeight: FontWeight.w600,color: AppColors.primary,),
                        4.ph,
                          TweenAnimationBuilder<double>(
                            duration: const Duration(seconds: 3),
                            curve: Curves.linear,
                            tween: Tween<double>(
                              begin: 0,
                              end: 1,
                            ),
                            builder: (context, value, _) =>
                                LinearProgressIndicator(value: value,
                                color: Color(0xff965555),
                                  backgroundColor: Color(0xffCDC9C9),
                                  minHeight: 7.25.h,
                                ),
                          ),
                        ],
                      ),
                    ),
                      16.pw,
                  ],),
                ),
              ),
            ),
            80.ph,
            TextWidget(title: 'رقم الهاتف',fontSize:16 ,textAlign:TextAlign.start,fontWeight:FontWeight.w700 ,color: AppColors.primary,),
            8.ph,
            Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10.r)
              ),
              child: Row(
                children: [
                  Expanded(child:
                 TextField(
                   controller: phoneController,
                   keyboardType: TextInputType.phone,
                  // textDirection: TextDirection.ltr,
                   textInputAction: TextInputAction.done,
                   cursorColor: AppColors.grayColor,
                   style: TextStyle(color: AppColors.grayColor),
                   decoration: InputDecoration(
                     hintText: 'رقم الهانف',
                     hintStyle: TextStyle(color: Colors.grey.withOpacity(0.6),fontSize: 16,),
                     border: InputBorder.none,
                     enabledBorder: InputBorder.none,
                     focusedBorder: InputBorder.none,
                   ),
                 ),

                  ),
                  4.pw,
                  VerticalDivider(thickness: 1,endIndent: 3,indent: 3,),
                  4.pw,
                  const TextWidget(title: '20+',fontSize:16 ,fontWeight:FontWeight.w700,color: Color(0xff965555),),

                ],
              ),
            ),
            24.ph,
            TextWidget(title: 'email'.tr(),fontSize:16 ,textAlign:TextAlign.start,fontWeight:FontWeight.w700 ,color: AppColors.primary,),
            8.ph,
            SizedBox(
              height: 60,
              child: TextField(
                keyboardType: TextInputType.phone,
              //  textDirection: TextDirection.ltr,
                textAlign: TextAlign.end,
                textInputAction: TextInputAction.done,
                cursorColor: AppColors.grayColor,
                showCursor: false,
                style: TextStyle(color: AppColors.grayColor),
                decoration: InputDecoration(
                  hintText: 'mostafa@gmail.com',
                  //hintTextDirection: TextDirection.ltr,
                  hintStyle: TextStyle(color: Colors.grey.withOpacity(0.6),fontSize: 16,),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey,),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey,),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey,),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: ButtonWidget(title: 'إرسال الوصل',fontSize:20 ,fontWeight: FontWeight.w700,radius: 10,
              onTap: ()async{
                String token= userUltraProMax?.token??"";
                var headers = {
                  'Accept': 'application/json',
                  'Accept-Language': 'en',
                  'Authorization': token,
                  'Cookie': 'diraya_session=AfKQfd08KsKHy03lef6MgbqWlBeAnSWo4Q12KuN0'
                };
                var request = http.MultipartRequest('POST',
                    Uri.parse('https://diraya.xyz/api/enrollment/checkout/${userUltraProMax?.id}'));
                request.fields.addAll({
                  'phone': phoneController.text
                });
                request.files.add(await http.MultipartFile.fromPath(
                    'image',_selectedImage!.path));
                request.headers.addAll(headers);

                http.StreamedResponse response = await request.send();

                if (response.statusCode == 200) {
                  Fluttertoast.showToast(
                      msg: "Payment Successful",
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 2,
                      backgroundColor: AppColors.primary,
                      textColor: Colors.white,
                      fontSize: 16.0
                  );
                  _selectedImage=null;
                  phoneController.clear();
                  setState(() {

                  });
                print(await response.stream.bytesToString());
                }
                else {
                  var reponseBody =await http.Response.fromStream(response);
                  Fluttertoast.showToast(
                      msg: "${jsonDecode(reponseBody.body)["message"]}",
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 2,
                      backgroundColor: AppColors.primary,
                      textColor: Colors.white,
                      fontSize: 16.0
                  );
                print(response.reasonPhrase);
                }

              },
              ),
            ),
            SizedBox(height: 120.h,),
          ],
        ),
      ),
    );
  }
}
