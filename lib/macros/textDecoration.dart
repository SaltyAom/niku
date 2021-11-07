import 'package:flutter/material.dart';

abstract class TextDecorationMacro {
  TextDecoration? decoration;

  void get noDecoration => decoration = TextDecoration.none;
  void get lineThrough => decoration = TextDecoration.lineThrough;
  void get aboveline => decoration = TextDecoration.overline;
  void get underline => decoration = TextDecoration.underline;
}
