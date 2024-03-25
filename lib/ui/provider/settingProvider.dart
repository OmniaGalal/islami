import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier{
  String SelectedLanguage="ar";
  ThemeMode theme=ThemeMode.dark;
  changeLanguage(String NewLocale){
    SelectedLanguage=NewLocale;
    notifyListeners();
  }
  changeTheme(ThemeMode newTheme){
    theme=newTheme;
    notifyListeners();
  }
  bool isDarkEnabled(){
    return theme==ThemeMode.dark;
  }

   Color getLabelColor() {
    return  isDarkEnabled()? Color(0xFFFACC1D) : Color(0xFF090909);
  }

   String getBackgroungImage() {
    return isDarkEnabled() ? "assets/images/bg_dark.png" : "assets/images/background.png";
  }

   String getSebhaHeadImage() {
    return isDarkEnabled()
        ? "assets/images/head of seb7a (1).png"
        : "assets/images/head_sebha.png";
  }

   String getSebhaBodyImage() {
    return isDarkEnabled()
        ? "assets/images/body of seb7a (1).png"
        : "assets/images/body_sebha.png";
  }
}