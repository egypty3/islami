import 'dart:async';
import 'package:flutter/material.dart';
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
      theme: ThemeData(
        cardTheme: CardTheme(
          surfaceTintColor:  Colors.white,
          elevation: 18,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18)),
        ),
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 28),
          iconTheme: IconThemeData(
            color: Colors.black
          )
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(
            size: 32
          )
        ),
        scaffoldBackgroundColor: Colors.transparent,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color(0xFFB7935F),
            primary: Color(0xFFB7935F),
            secondary: Color(0x87B7935F),
            onPrimary: Colors.white,
            onSecondary: Colors.black
        ),
        useMaterial3: true,
      ),
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        ChapterDetailsScreen.routeName: (_)=>ChapterDetailsScreen(),
        HadethDetailsScreen.routeName:(_)=>HadethDetailsScreen()
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
