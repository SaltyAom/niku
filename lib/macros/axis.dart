import 'package:flutter/material.dart';

abstract class AxisMacro {
  Axis? direction;

  void get vertical => direction = Axis.vertical;
  void get horizontal => direction = Axis.horizontal;

  void get row => direction = Axis.vertical;
  void get col => direction = Axis.vertical;
  void get column => direction = Axis.vertical;
}
