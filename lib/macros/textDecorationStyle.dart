import 'package:flutter/material.dart';

abstract class TextDecorationStyleMacro {
  TextDecorationStyle? decorationStyle;

  void get solid => decorationStyle = TextDecorationStyle.solid;
  void get double => decorationStyle = TextDecorationStyle.double;
  void get dotted => decorationStyle = TextDecorationStyle.dotted;
  void get dashed => decorationStyle = TextDecorationStyle.dashed;
  void get wavy => decorationStyle = TextDecorationStyle.wavy;
}
