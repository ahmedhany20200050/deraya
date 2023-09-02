


import 'dart:math' as math;
import 'package:deraya_application/core/constant/colors.dart';
import 'package:deraya_application/presentation/layout/home_layout.dart';
import 'package:deraya_application/presentation/screens/home/home_screen.dart';
import 'package:deraya_application/presentation/screens/login/login_screen.dart';
import 'package:deraya_application/presentation/screens/splash_screen/second_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});
  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 3)).whenComplete(()async{
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      bool remember=prefs.getBool("rememberMe")??false;
      if( prefs.getInt("firstTime")==null){
        Navigator.of(context).pushReplacement
          (MaterialPageRoute(builder: (context) =>
            const SecondSplashScreen()));
        prefs.setInt("firstTime",1);
      }else if(!remember){
        Navigator.of(context).pushReplacement
          (MaterialPageRoute(builder: (context) =>
            const LoginScreen()));
      }else if(remember){
        userUltraProMax =User(name: prefs.getString('name')??"", email: prefs.getString('email')??"", token: prefs.getString("token")??"",id: prefs.getInt("id")??-1);

        Navigator.of(context).pushReplacement
          (MaterialPageRoute(builder: (context) =>
        const HomeLayout()));
      }

    });

    return  Scaffold(
      body: Center(
        child: Circle()
      ),
    );
  }
}

class Circle extends StatefulWidget {
  const Circle({
    super.key,
  });

  @override
  State<Circle> createState() => _CircleState();
}

class _CircleState extends State<Circle> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 2))..repeat();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.3,
      child: AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * math.pi,
          child: Inner(),
        );
      },
    ),
    );
  }
}

class Inner extends StatelessWidget {
  const Inner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SleekCircularSlider(
        innerWidget: (double d)=>Text(""),
        initialValue: 30,
        appearance: CircularSliderAppearance(
          spinnerMode: true,
          animationEnabled: false,
          customWidths: CustomSliderWidths(
            trackWidth: 20,
            progressBarWidth: 17
          ),
          customColors: CustomSliderColors(
            progressBarColor: AppColors.primary,
            dotColor: AppColors.primary,
            trackColor: AppColors.lightBackground,
          )
        ),
      );
  }
}



