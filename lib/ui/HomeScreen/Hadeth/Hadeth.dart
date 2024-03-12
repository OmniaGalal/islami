import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/HomeScreen/Hadeth/hadeth_details.dart';

class HadethScreen extends StatefulWidget {
  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  List<Hadeth> AllHadethList = [];
  @override
  Widget build(BuildContext context) {
    if (AllHadethList.isEmpty) {
      loadHadeth();
    }
    return AllHadethList.isEmpty
        ? Center(child: CircularProgressIndicator())
        : Column(
            children: [
              Center(
                  child:
                      Image(image: AssetImage("assets/images/ic_hadeth.png"))),
              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.all(8),
                  separatorBuilder: (context, index) => Container(
                    width: double.infinity,
                    height: 1,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, HadethDetails.routeName,
                            arguments: Hadeth(AllHadethList[index].title,
                                AllHadethList[index].content));
                      },
                      child: Text(
                        AllHadethList[index].title,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ),
                  itemCount: AllHadethList.length,
                ),
              )
            ],
          );
  }

  void loadHadeth() async {
    String AllHadethContent =
        await rootBundle.loadString("assets/hadeth/ahadeth.txt");
    List<String> AllHadeth = AllHadethContent.trim().split("#");
    for (int i = 0; i < AllHadeth.length; i++) {
      String SingleHadeth = AllHadeth[i].trim();
      String title = SingleHadeth.substring(0, SingleHadeth.indexOf("\n"));
      String content = SingleHadeth.substring(SingleHadeth.indexOf("\n") + 1);
      print("title:$title");
      print("content:$content");

      Hadeth hadeth = Hadeth(title, content);
      AllHadethList.add(hadeth);
      setState(() {});
    }
  }
}

class Hadeth {
  String title;
  String content;
  Hadeth(this.title, this.content);
}
