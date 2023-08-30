import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
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
              child:  Image.asset('assets/images/Fawry 1.png'),
              ),
          width: 106,
          height: 125,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r),
              border: Border.all(color: Colors.black.withOpacity(0.25))
          ),
        ),
                    Container(
              child: Tab(
              child:  Image.asset('assets/images/pngegg 1.png'),
              ),
          width: 106,
          height: 125,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.r),
              border: Border.all(color: Colors.black.withOpacity(0.25))
          ),
        ),
                    Container(
                      child: Tab(
                        child:  Image.asset('assets/images/خدمة-فودافون-كاش 1.png'),
                      ),
                      width: 106,
                      height: 125,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.r),
                          border: Border.all(color: Colors.black.withOpacity(0.25))
                      ),
                    ),
              ]

            ),
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    Center(child: Text('Content for Tab 1')),
                    Center(child: Text('Content for Tab 2')),
                    Column(
                      children: [

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
