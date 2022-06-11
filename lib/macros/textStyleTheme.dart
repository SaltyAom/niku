import 'package:flutter/material.dart';

abstract class TextStyleThemeMacro {
  TextStyle? Function(BuildContext)? themeBuilder;

  TextTheme _theme(BuildContext context) => Theme.of(context).textTheme;

  void get h1 =>
      themeBuilder = (BuildContext context) => _theme(context).headline1;
  void get h2 =>
      themeBuilder = (BuildContext context) => _theme(context).headline2;
  void get h3 =>
      themeBuilder = (BuildContext context) => _theme(context).headline3;
  void get h4 =>
      themeBuilder = (BuildContext context) => _theme(context).headline4;
  void get h5 =>
      themeBuilder = (BuildContext context) => _theme(context).headline5;
  void get h6 =>
      themeBuilder = (BuildContext context) => _theme(context).headline6;
  void get body1 =>
      themeBuilder = (BuildContext context) => _theme(context).bodyText1;
  void get body2 =>
      themeBuilder = (BuildContext context) => _theme(context).bodyText2;
  void get subtitle1 =>
      themeBuilder = (BuildContext context) => _theme(context).subtitle1;
  void get subtitle2 =>
      themeBuilder = (BuildContext context) => _theme(context).subtitle2;
  void get overline =>
      themeBuilder = (BuildContext context) => _theme(context).overline;
  void get button =>
      themeBuilder = (BuildContext context) => _theme(context).button;

  /* Material 3 addition */
  void get displayLarge =>
      themeBuilder = (BuildContext context) => _theme(context).displayLarge;
  void get displayMedium =>
      themeBuilder = (BuildContext context) => _theme(context).displayMedium;
  void get displaySmall =>
      themeBuilder = (BuildContext context) => _theme(context).displaySmall;
  void get titleLarge =>
      themeBuilder = (BuildContext context) => _theme(context).titleLarge;
  void get titleMedium =>
      themeBuilder = (BuildContext context) => _theme(context).titleMedium;
  void get titleSmall =>
      themeBuilder = (BuildContext context) => _theme(context).titleSmall;
  void get bodyLarge =>
      themeBuilder = (BuildContext context) => _theme(context).bodyLarge;
  void get bodyMedium =>
      themeBuilder = (BuildContext context) => _theme(context).bodyMedium;
  void get bodySmall =>
      themeBuilder = (BuildContext context) => _theme(context).bodySmall;
  void get labelLarge =>
      themeBuilder = (BuildContext context) => _theme(context).labelLarge;
  void get labelMedium =>
      themeBuilder = (BuildContext context) => _theme(context).labelMedium;
  void get labelSmall =>
      themeBuilder = (BuildContext context) => _theme(context).labelSmall;
}
