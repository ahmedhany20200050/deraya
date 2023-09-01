
import 'package:deraya_application/core/Utils/utils.dart';
import 'package:deraya_application/presentation/layout/home_layout.dart';
import 'package:deraya_application/presentation/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';
import '../../components/button_widget.dart';
import '../../components/text_widget.dart';

class FinishPaymentScreen extends StatelessWidget {
  const FinishPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(title: "اكتملت العملية بنجاح",fontSize:20 ,fontWeight: FontWeight.w700,color: AppColors.primary),
                8.ph,
                TextWidget(textAlign: TextAlign.center,title: "سيتم إرسال على البريد الإلكتروني ورقم الهاتف تفيدك بتأكيد الدفع وتفعيل الكورس لديك.",fontSize:16 ,fontWeight: FontWeight.w700,color: AppColors.grayColor,),
                32.ph,
                Image.asset("assets/images/task_alt.png"),
                64.ph,
                ButtonWidget(
                  onTap: (){
                    Utils.openScreen(context, HomeLayout());
                  },
                  radius: 10,
                  title: "شراء",
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
