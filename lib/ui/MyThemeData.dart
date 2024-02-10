import 'package:flutter/material.dart';

class MyThemeData{

  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color lightSecondary = Color(0x87B7935F);
  static const Color darkPrimary = Color(0xFF141A2E);
  static const Color darkSecondary = Color(0xFFFACC1D);
  static ThemeData lightTheme = ThemeData(
    textTheme: const  TextTheme(
      headlineSmall: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: Colors.black
      ) ,
      titleMedium:  TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: Colors.black
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 20,
        color: Colors.black
      )
    ),
    cardTheme: CardTheme(
      color: Colors.white,
      surfaceTintColor:  Colors.transparent,
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
        seedColor: lightPrimary,
        primary: lightPrimary,
        secondary: lightSecondary,
        onPrimary: Colors.white,
        onSecondary: Colors.black,
        background: Colors.white
    ),
    useMaterial3: true,
    dividerColor: lightPrimary,
   bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.white
    )

  );
  static ThemeData darkTheme = ThemeData(
    textTheme: const  TextTheme(
        headlineSmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.white
        ) ,
        titleMedium:  TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: Colors.white
        ),
        bodyMedium: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: Colors.white
        )
    ),
    cardTheme: CardTheme(
      color: darkPrimary,
      surfaceTintColor:  Colors.transparent,
      elevation: 18,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18)),
    ),
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 28),
        iconTheme: IconThemeData(
            color: Colors.white
        )
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: darkSecondary,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(
            size: 32
        )
    ),
    scaffoldBackgroundColor: Colors.transparent,
    colorScheme: ColorScheme.fromSeed(
        seedColor: darkPrimary,
        primary: darkPrimary,
        secondary: darkSecondary,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        background: darkPrimary
    ),
    useMaterial3: true,
    dividerColor: darkSecondary,
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: darkPrimary
    )
  );
}