import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:deraya_application/presentation/screens/home/widget/price_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen>with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController=TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 18.w),
          child: Column(
            children: [
              50.ph,
              const CustomAppbar(),
            24.ph,
            TabBar(
              controller: tabController,
              indicatorColor: const Color(0xff965555),
              padding: EdgeInsets.zero,
              labelPadding: EdgeInsets.zero,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 3,
              labelColor: Colors.amber,
              unselectedLabelColor: Colors.grey,
              onTap: (val){
                setState((){
                  tabController.index=val;
                });
              },
              labelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              tabs: [

                    Container(
              child: Tab(
              child:  Image.asset('assets/images/Fawry 1.png',height: 36.h,),
              ),
          width: 106.w,
          height: 125.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r),
              border: Border.all(color: Colors.black.withOpacity(0.25))
          ),
        ),
                    Container(
              child: Tab(
              child:  Image.asset('assets/images/pngegg 1.png',height: 31.h,),
              ),
          width: 106.w,
          height: 125.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r),
              border: Border.all(color: Colors.black.withOpacity(0.25))
          ),
        ),
                    Container(
                      child: Tab(
                        child:  Image.asset('assets/images/خدمة-فودافون-كاش 1.png',height: 78.h,),
                      ),
                      width: 106.w,
                      height: 125.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.r),
                          border: Border.all(color: Colors.black.withOpacity(0.25))
                      ),
                    ),
              ]

            ),
              24.ph,
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    const Center(child: Text('Content for Tab 1')),
                    const Center(child: Text('Content for Tab 2')),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// title and price
                         Row(
                          children: [
                            Expanded(child: TextWidget(title: 'كورس Photoshop بالكامل للمبتدأين ،وتعليم أساسيات التصميم والأدوات.',fontSize:20.sp ,fontWeight: FontWeight.w700,color: AppColors.primary,maxLines: 4,)),
                            const PriceWidget(),

                          ],
                        ),
                        24.ph,
                        const Divider(
                          color: AppColors.primary,
                          thickness: 1,
                          endIndent: 46,
                          indent: 46,
                        ),
                        8.ph,
                        ///total price
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextWidget(title: 'المبلغ الاجمالي',color: const Color(0xff965555),fontSize: 16.sp,fontWeight: FontWeight.w700,),
                            TextWidget(title: "E£999.99",color: const Color(0xff965555),fontSize: 16.sp,fontWeight: FontWeight.w700,),
                          ],
                        ),
                        32.ph,
                         TextWidget(title: 'للدفع عن طريق (فودافون كاش) من داخل مصر',color: AppColors.primary,fontSize: 16.sp,fontWeight: FontWeight.w700,),
                     8.ph,
                        ///payment instruction
                        Row(
                          children: [
                            const InstructionNum(num: '1',),
                            8.pw,
                            Expanded(child: TextWidget(title: 'يرجى إرسال مبلغ (E£999.99) عبر فودافون كاش إلى أحد الأرقام التالية ',color: AppColors.primary,fontSize: 16.sp,fontWeight: FontWeight.w500,)),

                          ],
                        ),
                        16.ph,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 37.h,
                              width: 160.w,
                              decoration: BoxDecoration(
                                color: Color(0xFFB48B8B),
                              ),
                              child:
                              Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextWidget(title: '01223655398+',fontSize: 16.sp,fontWeight: FontWeight.w600,color: Colors.white,),
                                  VerticalDivider(color: Colors.white,thickness: 1,),
                                  Icon(Icons.copy,color: Colors.white,size: 20.sp,),

                                ],
                              ),
                            ),  Container(
                              height: 37.h,
                              width: 160.w,
                              decoration: BoxDecoration(
                                color: Color(0xFFB48B8B),
                              ),
                              child:Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextWidget(title: '01010227401+',fontSize: 16.sp,fontWeight: FontWeight.w600,color: Colors.white,),
                                  VerticalDivider(color: Colors.white,thickness: 1,),
                                   Icon(Icons.copy,color: Colors.white,size: 20.sp,),

                                ],
                              ),
                            ),
                          ],
                        ),
                        32.ph,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const InstructionNum(num: '2',),
                            8.pw,
                            Expanded(child: TextWidget(title: 'بعد الدفع ..\nيرجى إرسال الإيصال (أو سكرين شوت) على الواتس آب الخاص بنفس الرقم',color: AppColors.primary,maxLines:3,fontSize: 16.sp,fontWeight: FontWeight.w500,)),

                          ],
                        ),
                        16.ph,
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 37.h,
                            width: 160.w,

                            decoration: BoxDecoration(
                              color: Color(0xFFB48B8B),
                            ),
                            child:Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.photo_library_outlined,color: Colors.white,size: 20.sp,),
                                VerticalDivider(color: Colors.white,thickness: 1,),
                                TextWidget(title: 'إدراج صورة',fontSize: 16.sp,fontWeight: FontWeight.w600,color: Colors.white,),


                              ],
                            ),
                          ),
                        ),
                        40.ph,
                        TextWidget(title: 'سيتم تفعيل حسابك خلال 24 ساعة من عملية الدفع وسيتم إرسال على البريد الإلكتروني ورقم الهاتف تفيدك بتأكيد الدفع وتفعيل الكورس لديك.',fontSize:16.sp ,fontWeight: FontWeight.w700,color: AppColors.grayColor,maxLines: 4,)
                      ],
                    )
                  ],
                ),
              ),
              // AutoScaleTabBarView(children: [
              //   Text('data'),
              //   Text('data'),
              //   Text('data'),
              // ])
            ],
          ),
        ),
      ),
    );
  }
}

class InstructionNum extends StatelessWidget {
  const InstructionNum({
    super.key, required this.num,
  });
final String num;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 16.r,
      backgroundColor: AppColors.primary,
      child: TextWidget(title: num,color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w500,textAlign: TextAlign.center,),
    );
  }
}

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: (){
          Utils.backWidget(context);
        },
            padding: EdgeInsets.zero,
            icon: const Icon(Icons.arrow_back,color: AppColors.primary,)),
        8.pw,
        TextWidget(title: 'payment method'.tr(),fontSize:20 ,fontWeight: FontWeight.w700,color: AppColors.primary),
      ],
    );
  }
}
