import 'package:flutter/material.dart';

abstract class MainAxisSizeMacro {
  MainAxisSize? mainAxisSize;

  void get min => mainAxisSize = MainAxisSize.min;
  void get max => mainAxisSize = MainAxisSize.max;
}
