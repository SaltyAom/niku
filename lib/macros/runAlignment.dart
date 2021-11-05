import 'package:flutter/material.dart';

abstract class RunAlignmentMacro {
  WrapAlignment? runAlignment;

  void get runStart => runAlignment = WrapAlignment.start;
  void get runCenter => runAlignment = WrapAlignment.center;
  void get runEnd => runAlignment = WrapAlignment.end;
  void get runAround => runAlignment = WrapAlignment.spaceAround;
  void get runBetween => runAlignment = WrapAlignment.spaceBetween;
  void get runEvenly => runAlignment = WrapAlignment.spaceEvenly;

  void get spaceAround => runAlignment = WrapAlignment.spaceAround;
  void get spaceBetween => runAlignment = WrapAlignment.spaceBetween;
  void get spaceEvenly => runAlignment = WrapAlignment.spaceEvenly;
  void get around => runAlignment = WrapAlignment.spaceAround;
  void get between => runAlignment = WrapAlignment.spaceBetween;
  void get evenly => runAlignment = WrapAlignment.spaceEvenly;
}
