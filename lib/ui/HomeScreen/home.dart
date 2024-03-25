import 'package:flutter/material.dart';
import 'package:islami/ui/HomeScreen/Hadeth/Hadeth.dart';
import 'package:islami/ui/HomeScreen/Quran/Quran.dart';
import 'package:islami/ui/HomeScreen/Radio/Radio.dart';
import 'package:islami/ui/HomeScreen/sebha/Sebha.dart';
import 'package:islami/ui/HomeScreen/settings/settingsTab.dart';
import 'package:islami/ui/colors.dart';
import 'package:islami/ui/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../provider/settingProvider.dart';
class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);
  static const String routeName = "Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int SelectedIndx = 0;

  List items = [
    QuranScreen(),
    HadethScreen(),
    SebhaScreen(),
    RadioScreen(),
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    var settingsProvider=Provider.of<SettingsProvider>(context);

    return Container(
      decoration:  BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  settingsProvider.getBackgroungImage()
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: SelectedIndx,
          onTap: (index) {
            SelectedIndx = index;
            setState(() {});
          },
          //backgroundColor: Color(0xFFB7935F),
          selectedItemColor: settingsProvider.getLabelColor(),
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon:  ImageIcon(AssetImage("assets/images/quran.png")),
                label: AppLocalizations.of(context)!.quranTab),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: const ImageIcon(AssetImage("assets/images/hadeth.png")),
                label: AppLocalizations.of(context)!.hadethTab),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: const ImageIcon(AssetImage("assets/images/sebha.png")),
                label: AppLocalizations.of(context)!.sebhaTab),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: const ImageIcon(AssetImage("assets/images/radio.png")),
                label: AppLocalizations.of(context)!.radioTab),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: Icon(Icons.settings),
                label: AppLocalizations.of(context)!.settings),
          ],
        ),
        appBar: AppBar(
          title:  Text("${AppLocalizations.of(context)!.appTitle}"),
        ),
        body: items[SelectedIndx],
      ),
    );
  }
}
