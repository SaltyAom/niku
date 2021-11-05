import 'package:flutter/material.dart';

abstract class TextDirectionMixin {
  TextDirection? textDirection;

  void get ltr => textDirection = TextDirection.ltr;
  void get rtl => textDirection = TextDirection.rtl;
}
