import 'package:deraya_application/core/constant/text_styles.dart';
import 'package:deraya_application/presentation/screens/login/login_screen.dart';
import 'package:deraya_application/presentation/screens/splash_screen/splash_components/next_button.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';
import '../../components/text_widget.dart';

class FourthSplashScreen extends StatelessWidget {
  const FourthSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                      width: MediaQuery.of(context).size.width*0.97,
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: Image.asset(
                        "assets/images/fourthSplashScreen.png",
                        fit: BoxFit.fitWidth,
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 32.0,top: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(
                            title: "تعلم في اي وقت",
                            color: ColorsManger.primary,
                            fontSize: 16,
                          ),
                          TextWidget(
                            title: "في اي مكان, بادر بمستقبل",
                            fontWeight: FontWeight.w800,
                            color: ColorsManger.primary,
                            fontSize: 20,
                          ),
                          Text(
                            "افضل بكثير مع دراية..",
                            style: TextStyles.underlinedTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    SizedBox(
                      height: 100,
                      child: NextButton(0.85,LoginScreen(),startAngle: 120),
                    ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: TextWidget(
                          title: "ابدأ التعلم الآن",
                          fontWeight: FontWeight.w800,
                          color: ColorsManger.primary,
                          fontSize: 28,
                        ),
                      ),
                  ]
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
