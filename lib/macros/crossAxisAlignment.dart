import 'package:flutter/material.dart';

abstract class CrossAxisAlignmentMacro {
  CrossAxisAlignment? crossAxisAlignment;

  set crossAxis(CrossAxisAlignment value) => crossAxisAlignment = value;
  void get crossStart => crossAxisAlignment = CrossAxisAlignment.start;
  void get crossCenter => crossAxisAlignment = CrossAxisAlignment.center;
  void get crossEnd => crossAxisAlignment = CrossAxisAlignment.end;
  void get crossBaseline => crossAxisAlignment = CrossAxisAlignment.baseline;
  void get crossStretch => crossAxisAlignment = CrossAxisAlignment.stretch;

  void get baseline => crossAxisAlignment = CrossAxisAlignment.baseline;
  void get stretch => crossAxisAlignment = CrossAxisAlignment.stretch;
}
