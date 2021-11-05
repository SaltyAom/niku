import 'package:flutter/material.dart';

abstract class BackgroundColorMacro {
  Color? backgroundColor;

  set bg(Color color) => backgroundColor = color;
}
