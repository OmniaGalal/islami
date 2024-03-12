import 'package:flutter/material.dart';
import 'package:islami/ui/HomeScreen/Quran/QuranDetails.dart';

class QuranTitle extends StatelessWidget {
  QuranTitle(this.index,{required this.title, required this.number});
  String title;
  int index;
  int number;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, QuranDetails.routaName,arguments: QuranArguments(title, index));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text("$number",style: TextStyle(fontSize: 18),),
                ],
              ),
              Column(
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
