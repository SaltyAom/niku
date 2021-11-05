import 'package:flutter/material.dart';

abstract class WrapCrossAxisAlignmentMacro {
  WrapCrossAlignment? crossAxisAlignment;

  set wrapCross(WrapCrossAlignment value) => crossAxisAlignment = value;
  void get crossStart => crossAxisAlignment = WrapCrossAlignment.start;
  void get crossCenter => crossAxisAlignment = WrapCrossAlignment.center;
  void get crossEnd => crossAxisAlignment = WrapCrossAlignment.end;
}
