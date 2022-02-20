import 'package:flutter/material.dart';

abstract class WidthHeightMacro {
  double? width;
  double? height;

  set w(double w) => width = w;
  set h(double h) => height = h;
}
