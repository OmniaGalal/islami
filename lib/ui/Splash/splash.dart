import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami/ui/HomeScreen/home.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName="Splash";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context,HomeScreen.routeName);
    });
    return Image(image: AssetImage("assets/images/splash.png"),fit: BoxFit.fill,);
  }
}
