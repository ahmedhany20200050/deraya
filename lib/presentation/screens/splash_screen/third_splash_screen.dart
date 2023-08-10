import 'package:deraya_application/core/constant/text_styles.dart';
import 'package:deraya_application/presentation/screens/splash_screen/fourth_splash_screen.dart';
import 'package:deraya_application/presentation/screens/splash_screen/splash_components/next_button.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';
import '../../components/text_widget.dart';

class ThirdSplashScreen extends StatelessWidget {
  const ThirdSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async=>false,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 32.0,top: 32),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextWidget(
                              title: "أفصل منصة تعليمية",
                              color: ColorsManger.primary,
                              fontSize: 16,
                            ),
                            Text(
                              "لكل من الطلاب والمحاضرين",
                             style: TextStyles.underlinedTextStyle,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.65,
                      child: Image.asset(
                        "assets/images/thirdSplashScreen.png",
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: SizedBox(
                        height: 100,
                        child: NextButton(0.6, FourthSplashScreen(),startAngle: 160),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
