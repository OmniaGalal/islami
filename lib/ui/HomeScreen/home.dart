import 'package:flutter/material.dart';
import 'package:islami/ui/HomeScreen/Hadeth/Hadeth.dart';
import 'package:islami/ui/HomeScreen/Quran/Quran.dart';
import 'package:islami/ui/HomeScreen/Radio/Radio.dart';
import 'package:islami/ui/HomeScreen/sebha/Sebha.dart';
import 'package:islami/ui/colors.dart';
import 'package:islami/ui/theme.dart';

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
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  MyThemeData.getBackgroungImage()
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
          selectedItemColor: MyThemeData.getLabelColor(),
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: const ImageIcon(AssetImage("assets/images/quran.png")),
                label: "Quran"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: const ImageIcon(AssetImage("assets/images/hadeth.png")),
                label: "Hadeth"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: const ImageIcon(AssetImage("assets/images/sebha.png")),
                label: "Sebha"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: const ImageIcon(AssetImage("assets/images/radio.png")),
                label: "Radio"),
          ],
        ),
        appBar: AppBar(
          title: const Text("Islami"),
        ),
        body: items[SelectedIndx],
      ),
    );
  }
}
