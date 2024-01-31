import 'package:flutter/material.dart';
import 'package:islami/ui/MyThemeData.dart';
import 'package:islami/ui/home/settings/SettingsTab.dart';
import 'hadeth/HadethTab.dart';
import 'quran/QuranTab.dart';
import 'radio/RadioTab.dart';
import 'tasbeh/TasbehTab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image:  AssetImage(MyThemeData.isDarkEnabled?
                'assets/images/main_background_dark.png'
                    :'assets/images/main_background.png')
            )
        ),
        child: Scaffold(
          appBar: AppBar(

            title: Text('Islami'),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedTabIndex,
            onTap: (index) {
              setState(() {
                selectedTabIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/ic_quran.png')),
                  label: 'Quran'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/ic_hadeth.png')),
                  label: 'Hadeth'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/ic_sebha.png')),
                  label: 'Tasbeh'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/ic_radio.png')),
                  label: 'Radio'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: Icon(Icons.settings),
                  label: 'Settings')

            ],
          ),
          body: tabs[selectedTabIndex],
        ));
  }
  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    TasbehTab(),
    RadioTab(),
    SettingsTab()
  ];
}
