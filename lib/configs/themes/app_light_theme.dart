import 'package:firebase_crud/configs/themes/sub_theme_data_mixin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color primaryColorDark1 = Color(0xff2e3c62);
const Color primaryColorDark2 = Color(0xFF99ace1);
const Color mainLightTextColor = Color.fromARGB(255, 40, 40, 40);

class LightTheme with SubThemeData{
  buildLightTheme(){
   final ThemeData systemLightTheme = ThemeData.light();
   return systemLightTheme.copyWith(
     iconTheme: getIconTheme(),
     textTheme: getTextTheme().apply(
       bodyColor: mainLightTextColor ,
       displayColor: mainLightTextColor ,
     )
   );
  }
}