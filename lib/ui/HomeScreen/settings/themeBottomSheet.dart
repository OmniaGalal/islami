import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../provider/settingProvider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var settingsProvider=Provider.of<SettingsProvider>(context);

    return  Container(
          padding: EdgeInsets.all(8),
          color: Theme.of(context).colorScheme.primary,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){
                  settingsProvider.changeTheme(ThemeMode.light);
                  Navigator.pop(context);

                },
                  child: settingsProvider.theme==ThemeMode.light?
                  selectedTheme(context, "${AppLocalizations.of(context)!.light}"):
                      unSelectedTheme(context, "${AppLocalizations.of(context)!.light}")
              ),
              SizedBox(height: 25,),
              InkWell(
                onTap: (){
                  settingsProvider.changeTheme(ThemeMode.dark);
                  Navigator.pop(context);

                },
                  child:settingsProvider.theme==ThemeMode.dark?
                      selectedTheme(context, "${AppLocalizations.of(context)!.dark}"):
                  unSelectedTheme(context, "${AppLocalizations.of(context)!.dark}"))

            ],
          ));





  }
  Widget selectedTheme(BuildContext context,String text){
  return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Icon(Icons.check,color: Theme.of(context).colorScheme.onPrimary,)

      ],
    );
  }
  Widget unSelectedTheme(BuildContext context,String text){
   return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        // Icon(Icons.check,color: Theme.of(context).colorScheme.onPrimary)

      ],
    );
  }
}
