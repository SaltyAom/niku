import 'package:flutter/material.dart';

abstract class VerticalDirecrtionMacro {
  VerticalDirection? verticalDirection;

  void get up => verticalDirection = VerticalDirection.up;
  void get down => verticalDirection = VerticalDirection.down;
}
