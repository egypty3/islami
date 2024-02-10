import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/providers/SettingsProvider.dart';
import 'package:islami/ui/MyThemeData.dart';
import 'package:islami/ui/hadethDetails/HadethDetailsScreen.dart';
import 'package:provider/provider.dart';
import 'ui/Splash/SplashScreen.dart';
import 'ui/chapterDetails/ChapterDetailsScreen.dart';
import 'ui/home/HomeScreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (buildContext) => SettingsProvider(),
      child: MyApp())
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider =
      Provider.of<SettingsProvider>(context);
    // by default listen for changes in settings
    // search for settings provider
    // inside widgets tree

    return MaterialApp(
      title: 'Splash Screen',
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: settingsProvider.currentTheme,
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        ChapterDetailsScreen.routeName: (_) => ChapterDetailsScreen(),
        HadethDetailsScreen.routeName: (_) => HadethDetailsScreen()
      },
      initialRoute: SplashScreen.routeName,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      // const [
      //   AppLocalizations.delegate, // Add this line
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],
      locale: Locale(settingsProvider.currentLocale),
    );
  }
}
