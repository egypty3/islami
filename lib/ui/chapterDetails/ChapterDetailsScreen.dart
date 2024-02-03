import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/MyThemeData.dart';
import 'package:islami/ui/chapterDetails/ChapterDetailsArgs.dart';
import 'package:islami/ui/chapterDetails/VerseWidget.dart';

class ChapterDetailsScreen extends StatefulWidget {
  static const String routeName = 'chapter-details';

  @override
  State<ChapterDetailsScreen> createState() => _ChapterDetailsScreenState();
}

class _ChapterDetailsScreenState extends State<ChapterDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    ChapterDetailsArgs args =
        ModalRoute.of(context)?.settings.arguments as ChapterDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }

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
          title: Text(args.title),
        ),
        body: verses.isEmpty
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Card(
                margin: EdgeInsets.symmetric(vertical: 48, horizontal: 24),
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return VerseWidget(verses[index], index);
                  },
                  itemCount: verses.length,
                    separatorBuilder: (context, index) => Container(
                      color: Theme.of(context).dividerColor,
                      width: double.infinity,
                      height: 2,
                      margin: EdgeInsets.symmetric(horizontal: 64),
                    )
                ),
              ),
      ),
    );
  }

  List<String> verses = [];

  void loadFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    verses = fileContent.split("\n");
    print(fileContent);
    setState(() {});
  }
}
