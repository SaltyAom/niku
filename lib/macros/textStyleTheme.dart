import 'package:flutter/material.dart';

abstract class TextStyleThemeMacro {
  TextStyle? Function(BuildContext)? themeBuilder;

  static TextTheme _theme(BuildContext context) => Theme.of(context).textTheme;

  get h1 => themeBuilder = (BuildContext context) => _theme(context).headline1;
  get h2 => themeBuilder = (BuildContext context) => _theme(context).headline2;
  get h3 => themeBuilder = (BuildContext context) => _theme(context).headline3;
  get h4 => themeBuilder = (BuildContext context) => _theme(context).headline4;
  get h5 => themeBuilder = (BuildContext context) => _theme(context).headline5;
  get h6 => themeBuilder = (BuildContext context) => _theme(context).headline6;
  get body1 =>
      themeBuilder = (BuildContext context) => _theme(context).bodyText1;
  get body2 =>
      themeBuilder = (BuildContext context) => _theme(context).bodyText2;
  get subtitle1 =>
      themeBuilder = (BuildContext context) => _theme(context).subtitle1;
  get subtitle2 =>
      themeBuilder = (BuildContext context) => _theme(context).subtitle2;
  get overline =>
      themeBuilder = (BuildContext context) => _theme(context).overline;
  get button => themeBuilder = (BuildContext context) => _theme(context).button;

  /* Material 3 addition */
  get displayLarge =>
      themeBuilder = (BuildContext context) => _theme(context).displayLarge;
  get displayMedium =>
      themeBuilder = (BuildContext context) => _theme(context).displayMedium;
  get displaySmall =>
      themeBuilder = (BuildContext context) => _theme(context).displaySmall;
  get titleLarge =>
      themeBuilder = (BuildContext context) => _theme(context).titleLarge;
  get titleMedium =>
      themeBuilder = (BuildContext context) => _theme(context).titleMedium;
  get titleSmall =>
      themeBuilder = (BuildContext context) => _theme(context).titleSmall;
  get bodyLarge =>
      themeBuilder = (BuildContext context) => _theme(context).bodyLarge;
  get bodyMedium =>
      themeBuilder = (BuildContext context) => _theme(context).bodyMedium;
  get bodySmall =>
      themeBuilder = (BuildContext context) => _theme(context).bodySmall;
  get labelLarge =>
      themeBuilder = (BuildContext context) => _theme(context).labelLarge;
  get labelMedium =>
      themeBuilder = (BuildContext context) => _theme(context).labelMedium;
  get labelSmall =>
      themeBuilder = (BuildContext context) => _theme(context).labelSmall;
}
