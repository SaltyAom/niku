import 'package:flutter/material.dart';

abstract class TextStyleThemeMacro {
  TextStyle? Function(BuildContext)? themeBuilder;

  TextTheme _theme(BuildContext context) => Theme.of(context).textTheme;

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
