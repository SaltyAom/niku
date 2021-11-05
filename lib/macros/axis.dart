import 'package:flutter/material.dart';

abstract class AxisMacro {
  Axis? axis;

  void get vertical => axis = Axis.vertical;
  void get horizontal => axis = Axis.horizontal;

  void get row => axis = Axis.vertical;
  void get col => axis = Axis.vertical;
  void get column => axis = Axis.vertical;
}
