import 'package:flutter/material.dart';

abstract class AlignmentDirectionalMacro {
  AlignmentGeometry? alignment;

  void get topStart => alignment = AlignmentDirectional.topStart;
  void get topCenter => alignment = AlignmentDirectional.topCenter;
  void get topEnd => alignment = AlignmentDirectional.topEnd;
  void get centerStart => alignment = AlignmentDirectional.centerStart;
  void get center => alignment = AlignmentDirectional.center;
  void get centerEnd => alignment = AlignmentDirectional.centerEnd;
  void get bottomStart => alignment = AlignmentDirectional.bottomStart;
  void get bottomCenter => alignment = AlignmentDirectional.bottomCenter;
  void get bottomEnd => alignment = AlignmentDirectional.bottomEnd;
}
