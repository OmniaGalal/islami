import 'package:flutter/material.dart';
import 'package:islami/ui/HomeScreen/Hadeth/hadeth_details.dart';
import 'package:islami/ui/HomeScreen/Quran/QuranDetails.dart';
import 'package:islami/ui/HomeScreen/home.dart';
import 'package:islami/ui/Splash/splash.dart';
import 'package:islami/ui/theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: MyThemeData.LightTheme,
      darkTheme: MyThemeData.DarkTheme,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      initialRoute: HomeScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        QuranDetails.routaName: (context) => QuranDetails(),
        HadethDetails.routeName:(context) => HadethDetails()
      },
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      locale: const Locale('ar'),
    );
  }
}
