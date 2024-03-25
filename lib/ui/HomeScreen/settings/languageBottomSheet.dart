import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/settingProvider.dart';

class languageBottomSheet extends StatelessWidget {
  const languageBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);

    return Container(
        padding: EdgeInsets.all(8),
        color: Theme.of(context).colorScheme.primary,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
                onTap: () {
                  settingsProvider.changeLanguage("en");
                  Navigator.pop(context);

                },
                child:
                    settingsProvider.SelectedLanguage=="en"?
                selectedTheme(context, "English"):
                        unSelectedTheme(context, "English")
            ),
            SizedBox(
              height: 25,
            ),
            InkWell(
                onTap: () {
                  settingsProvider.changeLanguage("ar");
                  Navigator.pop(context);

                },
                child: settingsProvider.SelectedLanguage=="ar"?
                    selectedTheme(context, "العربية"):
                unSelectedTheme(context, "العربيه"))
          ],
        ));
  }

  Widget selectedTheme(BuildContext context, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).colorScheme.onPrimary,
        )
      ],
    );
  }

  Widget unSelectedTheme(BuildContext context, String text) {
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
