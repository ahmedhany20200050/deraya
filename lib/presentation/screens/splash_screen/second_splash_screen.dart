import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/presentation/components/text_widget.dart';
import 'package:deraya_application/presentation/screens/splash_screen/splash_components/next_button.dart';
import 'package:deraya_application/presentation/screens/splash_screen/third_splash_screen.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/text_styles.dart';

class SecondSplashScreen extends StatelessWidget {
  const SecondSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      "assets/images/secondSplashScreen.png",
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
                          title: "الدراسة عبر الانترنت",
                          color: AppColors.primary,
                          fontSize: 16,
                        ),
                        TextWidget(
                          title: "أصبحت الخيار الأفضل لدي",
                          fontWeight: FontWeight.w800,
                          color: AppColors.primary,
                          fontSize: 20,
                        ),
                        Text(
                          "الجميع عبر دراية..",
                          style: TextStyles.underlinedTextStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    height: 100,
                    child: NextButton(0.35,ThirdSplashScreen(),startAngle: 180),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

