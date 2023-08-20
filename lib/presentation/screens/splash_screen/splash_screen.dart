import 'package:deraya_application/presentation/screens/loading_screen/loading_screen.dart';
import 'package:deraya_application/presentation/screens/splash_screen/second_splash_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).whenComplete((){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoadingScreen()));
    });
    return WillPopScope(
      onWillPop: ()async=>false,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset("assets/images/splash_image.png"),
            ),
          ],
        ),
      ),
    );
  }
}
