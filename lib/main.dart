import 'dart:async';
import 'package:flutter/material.dart';
import 'package:islami/ui/MyThemeData.dart';
import 'package:islami/ui/hadethDetails/HadethDetailsScreen.dart';
import 'ui/Splash/SplashScreen.dart';
import 'ui/chapterDetails/ChapterDetailsScreen.dart';
import 'ui/home/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.light ,
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        ChapterDetailsScreen.routeName: (_)=>ChapterDetailsScreen(),
        HadethDetailsScreen.routeName:(_)=>HadethDetailsScreen()
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
