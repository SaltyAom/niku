import 'package:flutter/material.dart';

abstract class FontStyleMacro {
  FontStyle? fontStyle;

  void get italic => fontStyle = FontStyle.italic;
}
