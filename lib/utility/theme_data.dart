import 'package:flutter/material.dart';
import 'colour.dart';

final ThemeData baseBuildTheme = _baseBuilderTheme();

final ThemeData baseLightBuildTheme = _baseLightbuilderTheme();
final ThemeData baseDarkBuildTheme = _baseDarkbuilderTheme();

ThemeData _baseBuilderTheme() {
  final ThemeData base = ThemeData.fallback();

  return base.copyWith(
      primaryColor: primaryColour,
      accentColor: secondaryColour,
      scaffoldBackgroundColor: backgroundColor,
      appBarTheme: base.appBarTheme.copyWith(
          elevation: 0,
          color: secondaryColourDark,
          iconTheme: base.iconTheme.copyWith(
            color: white,
            size: 20,
          ),
          textTheme: base.textTheme.copyWith(
            headline6: TextStyle(
              color: white,
            ),
            headline5: TextStyle(
              color: white,
            ),
            headline4: TextStyle(
              color: white,
            ),
            headline3: TextStyle(
              color: white,
            ),
            headline2: TextStyle(
              color: white,
            ),
            headline1: TextStyle(
              color: white,
            ),

            bodyText2: TextStyle(
              color: white,
            ),
            caption: TextStyle(
              color: white,
            ),
          )),
      bottomAppBarTheme:
          base.bottomAppBarTheme.copyWith(color: black54, elevation: 2),
      iconTheme: base.iconTheme.copyWith(color: primaryColour, size: 20),
      buttonTheme: base.buttonTheme.copyWith(
          buttonColor: primaryColour,
          disabledColor: grey,
          shape: StadiumBorder(),
          textTheme: ButtonTextTheme.primary),
      tabBarTheme: base.tabBarTheme.copyWith(
        labelColor: white,
        unselectedLabelColor: black54,
        indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: primaryColourLight),
      ),
      inputDecorationTheme: base.inputDecorationTheme.copyWith(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ));
}

ThemeData _baseLightbuilderTheme() {
  final ThemeData baseLight = ThemeData.light();
  return baseLight.copyWith();
}

ThemeData _baseDarkbuilderTheme() {
  final ThemeData baseDark = ThemeData.dark();
  return baseDark.copyWith();
}
