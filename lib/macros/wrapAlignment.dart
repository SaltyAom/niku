import 'package:flutter/material.dart';

abstract class WrapAlignmentMacro {
  WrapAlignment? alignment;

  void get wrapStart => alignment = WrapAlignment.start;
  void get wrapCenter => alignment = WrapAlignment.center;
  void get wrapEnd => alignment = WrapAlignment.end;
  void get wrapAround => alignment = WrapAlignment.spaceAround;
  void get wrapBetween => alignment = WrapAlignment.spaceBetween;
  void get wrapEvenly => alignment = WrapAlignment.spaceEvenly;

  void get spaceAround => alignment = WrapAlignment.spaceAround;
  void get spaceBetween => alignment = WrapAlignment.spaceBetween;
  void get spaceEvenly => alignment = WrapAlignment.spaceEvenly;
  void get around => alignment = WrapAlignment.spaceAround;
  void get between => alignment = WrapAlignment.spaceBetween;
  void get evenly => alignment = WrapAlignment.spaceEvenly;
}
