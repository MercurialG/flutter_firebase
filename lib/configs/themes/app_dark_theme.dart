import 'package:firebase_crud/configs/themes/sub_theme_data_mixin.dart';
import 'package:flutter/material.dart';

const Color primaryColorLight1 = Color(0xff3ac3cb);
const Color primaryColorLight2 = Color(0xFFf85187);
const Color mainDarkTextColor = Colors.white;

class DarkTheme with SubThemeData {
  ThemeData buildDarkTheme() {
    final ThemeData systemDarkTheme = ThemeData.dark();
    return systemDarkTheme.copyWith(
        iconTheme: getIconTheme(),
        textTheme: getTextTheme().apply(
          bodyColor: mainDarkTextColor,
          displayColor: mainDarkTextColor,
        ));
  }
}
