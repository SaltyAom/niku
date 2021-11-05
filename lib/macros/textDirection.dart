import 'package:flutter/material.dart';

abstract class TextDirectionMacro {
  TextDirection? textDirection;

  void get ltr => textDirection = TextDirection.ltr;
  void get rtl => textDirection = TextDirection.rtl;
}
