import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/theme.dart';

class QuranDetails extends StatefulWidget {
  QuranDetails({Key? key}) : super(key: key);
  static const String routaName = "Quran-Details";

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  List<String> versesList = [];

  @override
  Widget build(BuildContext context) {
    QuranArguments args =
        ModalRoute.of(context)?.settings.arguments as QuranArguments;
    if (versesList.isEmpty) {
      loadSuras(args.index);
    }
    ;
    return Container(
      decoration:  BoxDecoration(
          image: DecorationImage(
              image: AssetImage(MyThemeData.getBackgroungImage()),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: versesList.isEmpty
            ? Center(child: CircularProgressIndicator())
            : Container(
                margin: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                child: Card(
                  child: ListView.builder(
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        versesList[index],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 22,color:Theme.of(context).colorScheme.onPrimary),
                      ),
                    ),
                    itemCount: versesList.length,
                  ),
                ),
              ),
      ),
    );
  }

  void loadSuras(int index) async {
    String fileContent =
        await rootBundle.loadString("assets/quran/${index}.txt");
    List<String> content = fileContent.trim().split("\n");
    versesList = content;
    setState(() {});
    print('');

// print(content[3]);
  }
}

class QuranArguments {
  QuranArguments(this.title, this.index);
  String title;
  int index;
}
