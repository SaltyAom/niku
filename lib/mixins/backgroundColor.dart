import 'package:flutter/material.dart';

abstract class BackgroundColorMixin {
  Color? backgroundColor;

  set bg(Color color) => backgroundColor = color;
}
