import 'package:flutter/material.dart';
import 'package:islami/ui/chapterDetails/ChapterDetailsArgs.dart';
import 'package:islami/ui/chapterDetails/ChapterDetailsScreen.dart';

class ChapterTitleWidget extends StatelessWidget {
  String title;
  int index;
  ChapterTitleWidget(this.title,this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context)
            .pushNamed(ChapterDetailsScreen.routeName,
        arguments: ChapterDetailsArgs(title, index));
        print(index+1);
      },
      child: Container(
        padding: EdgeInsets.all(8),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(fontSize: 25, fontFamily: 'koufi'),
        ),
      ),
    );
  }
}
