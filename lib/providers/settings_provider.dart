import 'package:flutter/material.dart';
import 'package:islami_app/UI/home/tabs/lang_sheet_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

// observer


class SettingsProvider extends ChangeNotifier {
  ThemeMode theme = ThemeMode.light;

  Future<void> changeTheme (ThemeMode  newTheme) async{
    // light -> light
    if(theme==newTheme)return;
    theme= newTheme;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await  prefs.setString( theme.name,"newTheme");
    // o5t el setstate
    notifyListeners();

  }

  String language = "en";

  Future<void> changeLanguage(String newLanguage) async{
    if(language == newLanguage) return;
    language = newLanguage;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await  prefs.setString(language,newLanguage );
    notifyListeners();
  }

   LastSettings()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? language  = prefs.getString("newLanguage");
    String? theme = prefs.getString("theme");

    theme ?? "light";
    ThemeMode newTheme =( theme =="dark" ? ThemeMode.dark :ThemeMode.light);
    language  ?? "en";
    // ThemeMode newLanguage =( language =="en" ? "en":"ar");
    language = language;
    notifyListeners();
  }
}
