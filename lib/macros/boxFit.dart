import 'package:flutter/material.dart';

abstract class BoxFitMacro {
  BoxFit? fit;

  void get contain => fit = BoxFit.contain;
  void get cover => fit = BoxFit.cover;
  void get fill => fit = BoxFit.fill;
  void get fitHeight => fit = BoxFit.fitHeight;
  void get fitWidth => fit = BoxFit.fitWidth;
  void get noFit => fit = BoxFit.none;
  void get scaleDown => fit = BoxFit.scaleDown;
}
