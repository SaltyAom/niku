import 'package:flutter/material.dart';

abstract class FontStyleMixin {
  FontStyle? fontStyle;

  void get italic => fontStyle = FontStyle.italic;
}
