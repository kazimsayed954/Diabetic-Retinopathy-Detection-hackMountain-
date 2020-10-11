import 'package:flutter/material.dart';
import 'package:hackmountain/screens/detectScreen.dart';

import 'package:hackmountain/screens/landing_screen.dart';
import 'package:animated_splash/animated_splash.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diabetic Retinopathy Detection',
      theme: ThemeData.dark(),
      home: AnimatedSplash(
        imagePath: 'assets/images/logo.png',
        duration: 2500,
        type: AnimatedSplashType.StaticDuration,
        //home: DetectScreen(title: 'ASL Detection'),
        home: LandingPage(),
      ),
    );
  }
}