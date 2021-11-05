import 'package:flutter/material.dart';

abstract class ForegroundColorMixins {
  Color? foregroundColor;

  set fg(Color color) => foregroundColor = color;
}
