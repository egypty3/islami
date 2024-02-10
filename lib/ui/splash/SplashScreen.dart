import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami/ui/MyThemeData.dart';
import 'package:provider/provider.dart';
import '../../providers/SettingsProvider.dart';
import '/ui/home/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "splash";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Scaffold(
        body: Container(
            width: double.infinity,
            child: Image.asset(
              (provider.isDarkEnabled())
                  ? 'assets/images/splash_background_dark.png'
                  : 'assets/images/splash_background.png',
              fit: BoxFit.fill,
            )));
  }
}
