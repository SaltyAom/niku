import 'package:flutter/material.dart';

abstract class TextBaselineMacro {
  TextBaseline? textBaseline;

  void get alphabetic => textBaseline = TextBaseline.alphabetic;
  void get ideographic => textBaseline = TextBaseline.ideographic;
}
