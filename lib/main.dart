import 'package:flutter/material.dart';
import 'package:islami/ui/HomeScreen/Hadeth/hadeth_details.dart';
import 'package:islami/ui/HomeScreen/Quran/QuranDetails.dart';
import 'package:islami/ui/HomeScreen/home.dart';
import 'package:islami/ui/Splash/splash.dart';

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
      theme: ThemeData(
        textTheme: TextTheme(titleLarge: TextStyle(fontSize: 20,)),
        appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.transparent),
        scaffoldBackgroundColor: Colors.transparent,
        cardTheme: CardTheme(
            color: Color(0xFFF8F8F8),
            elevation: 20,
            surfaceTintColor: Colors.transparent),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(
            color: Colors.black,
            size: 32,
          ),
          unselectedIconTheme: IconThemeData(color: Colors.white, size: 30),
          // selectedItemColor: Colors.black,
          // unselectedItemColor: Colors.white
        ),
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFFB7935F),
            primary: const Color(0xFFB7935F)),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      initialRoute: HomeScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        QuranDetails.routaName: (context) => QuranDetails(),
        HadethDetails.routeName:(context) => HadethDetails()
      },
    );
  }
}
