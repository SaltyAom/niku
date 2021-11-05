import 'package:flutter/material.dart';

abstract class ForegroundColorMacro {
  Color? foregroundColor;

  set fg(Color color) => foregroundColor = color;
}
