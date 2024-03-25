import 'package:flutter/material.dart';
import 'package:islami/ui/theme.dart';
import 'package:provider/provider.dart';

import '../../provider/settingProvider.dart';

class SebhaScreen extends StatefulWidget {
  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  double angel = 180;
  List<String> text = [
    "سبحان الله",
    "الحمد لله",
    "الله اكبر",
    "لاحول  ولا قوة الا بالله"
  ];
  int TasbehNumber = 0;
  int counter=0;
  @override
  Widget build(BuildContext context) {
    var settingsProvider=Provider.of<SettingsProvider>(context);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Center(
                    child: Image(
                  image: AssetImage(settingsProvider.getSebhaHeadImage()),
                  width: 60,
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 90.0, bottom: 20),
                child: Center(
                    child: Transform.rotate(
                  angle: angel,
                  child: GestureDetector(
                    onTap: () {
                      angel += 3;
                      counter++;
                      if (counter % 34 ==0) {
                        TasbehNumber++;
                        counter=0;
                      }
                      if(TasbehNumber>=text.length){
                        TasbehNumber=0;
                      }
                      setState(() {});
                    },
                    child: Image(
                      image: AssetImage(settingsProvider.getSebhaBodyImage()),
                      width: 210,
                    ),
                  ),
                )),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "عدد التسبيحات",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "$counter",
                      style: Theme.of(context).textTheme.titleLarge,
                    )),
              ),
              Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "${text[TasbehNumber]}",
                        style: TextStyle(fontSize:25,color: Theme.of(context).colorScheme.onSecondary),
                      ))),
            ],
          )
        ],
      ),
    );
  }

  }

