import 'package:flutter/material.dart';
import 'package:islami/ui/HomeScreen/settings/languageBottomSheet.dart';
import 'package:islami/ui/HomeScreen/settings/themeBottomSheet.dart';
import 'package:islami/ui/provider/settingProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${AppLocalizations.of(context)!.language}",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => languageBottomSheet(),
              );

            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: settingsProvider.SelectedLanguage == "en"
                    ? Text(
                        "English",
                        style: Theme.of(context).textTheme.titleLarge,
                      )
                    : Text(
                        "العربيه",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            "${AppLocalizations.of(context)!.theme}",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context, builder: (context) => ThemeBottomSheet())
              ;
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: settingsProvider.isDarkEnabled()
                    ? Text(
                        "${AppLocalizations.of(context)!.dark}",
                        style: Theme.of(context).textTheme.titleLarge,
                      )
                    : Text(
                        "${AppLocalizations.of(context)!.light}",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
