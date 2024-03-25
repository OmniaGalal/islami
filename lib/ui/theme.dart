import 'package:flutter/material.dart';
import 'package:islami/ui/provider/settingProvider.dart';
import 'package:provider/provider.dart';

class MyThemeData {

  static const Color PrimaryDark = Color(0xFF141A2E);
  static const Color SecondaryDark = Color(0xFFFACC1D);
  static const Color Blackk = Colors.black;
  static const Color Whitee = Colors.white;
  static const Color PrimaryLight = Color(0xFFB7935F);

  static final ThemeData LightTheme = ThemeData(
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 20,
          color: Blackk
        ),
        titleMedium: TextStyle(
            color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
      ),
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
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
        seedColor: PrimaryLight,
        primary: PrimaryLight,
        onPrimary: Blackk,
        onSecondary: Whitee,
        secondary: PrimaryLight,
      ));
  static final ThemeData DarkTheme = ThemeData(
    textTheme: TextTheme(
      titleLarge: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
      titleMedium: TextStyle(
          color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
    ),
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent),
    scaffoldBackgroundColor: Colors.transparent,
    cardTheme: CardTheme(
        color: PrimaryDark,
        elevation: 20,
        surfaceTintColor: Colors.transparent),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: PrimaryDark,
      selectedIconTheme: IconThemeData(
        color: SecondaryDark,
        size: 32,
      ),
      unselectedIconTheme: IconThemeData(color: Colors.white, size: 30),
      // selectedItemColor: Colors.black,
      // unselectedItemColor: Colors.white
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: PrimaryDark,
      primary: PrimaryDark,
      onPrimary: SecondaryDark,
      secondary: SecondaryDark,
      onSecondary: Blackk,
    ),
  );

}
