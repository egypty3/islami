import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'HadethTitleWidget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


import 'Hadeth.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  @override
  Widget build(BuildContext context) {
    if(allAhadeth.isEmpty) {
      loadHadethFile();
    }
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Image.asset("assets/images/hadeth_header_image.png")),
        Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.symmetric(
                    horizontal: BorderSide(
                        color: Theme.of(context).primaryColor, width: 2))),
            child: Text(
              AppLocalizations.of(context)!.hadeth,
              style: Theme.of(context).textTheme.titleMedium,
            )),
        Expanded(
          flex: 3,
          child: allAhadeth.isEmpty
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.separated(
                  itemBuilder: (context, index) {
                    return HadethTitleWidget(allAhadeth[index]);
                  },
                  separatorBuilder: (context, index) => Container(
                        color: Theme.of(context).dividerColor,
                        width: double.infinity,
                        height: 2,
                        margin: EdgeInsets.symmetric(horizontal: 64),
                      ),
                  itemCount: allAhadeth.length),
        )
      ],
    );
  }

  List<Hadeth> allAhadeth = [];

  void loadHadethFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadethList = fileContent.trim().split("#");
    for (int i = 0; i < hadethList.length; i++) {
      String singleHadeth = hadethList[i];
      List<String> hadethLines = singleHadeth.trim().split("\n");
      String title = hadethLines[0]; //first line
      hadethLines.removeAt(0);
      String content = hadethLines.join('\n');

      Hadeth hadeth = Hadeth(title, content);
      allAhadeth.add(hadeth);
    }
    setState(() {

    });
  }
}
