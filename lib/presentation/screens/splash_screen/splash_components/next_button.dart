
import 'package:deraya_application/presentation/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../core/constant/colors.dart';

class NextButton extends StatelessWidget {
  final double percent;
  final Widget screen;
  final double startAngle;
  const NextButton(this.percent,this.screen, {super.key, required this.startAngle});

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      lineWidth: 2.5,
      percent: percent,
      startAngle: startAngle,
      animation: true,
      animateFromLastPercent: true,
      progressColor: AppColors.blackColor,
      center: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
            onPressed: (){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => screen));
            },
            child: Icon(Icons.arrow_back),
            backgroundColor: AppColors.primary),
      ),
      radius: 44,
    );
  }
}

