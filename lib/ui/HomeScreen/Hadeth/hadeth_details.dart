import 'package:flutter/material.dart';
import 'package:islami/ui/HomeScreen/Hadeth/Hadeth.dart';

class HadethDetails extends StatelessWidget {
  HadethDetails();

  static const String routeName = "hadeth_details";
  @override
  Widget build(BuildContext context) {
    Hadeth args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
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
                      style: TextStyle(fontSize: 22),
                    ),
                    Divider(color: Theme.of(context).colorScheme.primary,thickness: 2),
                    Text(
                      "${args.content}",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 22),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
