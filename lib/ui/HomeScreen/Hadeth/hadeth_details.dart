import 'package:flutter/material.dart';
import 'package:islami/ui/HomeScreen/Hadeth/Hadeth.dart';
import 'package:islami/ui/theme.dart';
import 'package:provider/provider.dart';

import '../../provider/settingProvider.dart';

class HadethDetails extends StatelessWidget {
  HadethDetails();

  static const String routeName = "hadeth_details";
  @override
  Widget build(BuildContext context) {
    var settingsProvider=Provider.of<SettingsProvider>(context);

    Hadeth args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
        decoration:  BoxDecoration(
            image: DecorationImage(
                image: AssetImage(settingsProvider.getBackgroungImage()),
                fit: BoxFit.fill)),
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding:
                  EdgeInsets.only(left: 20, right: 20, top: 90, bottom: 50),
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: ListView(
                  children: [
                    Text(
                      "${args.title}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25,
                          color: Theme.of(context).colorScheme.onPrimary),
                    ),
                    Divider(
                        color: Colors.white,
                        thickness: 2),
                    Text(
                      "${args.content}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 22,
                          color: Theme.of(context).colorScheme.onPrimary),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
