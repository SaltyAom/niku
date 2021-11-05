import 'package:flutter/material.dart';

abstract class AxisMixin {
  MainAxisAlignment? mainAxisAlignment;
  MainAxisSize? mainAxisSize;
  CrossAxisAlignment? crossAxisAlignment;
  VerticalDirection? verticalDirection;

  set mainAxis(MainAxisAlignment value) => mainAxisAlignment = value;
  void get mainStart => mainAxisAlignment = MainAxisAlignment.start;
  void get mainCenter => mainAxisAlignment = MainAxisAlignment.center;
  void get mainEnd => mainAxisAlignment = MainAxisAlignment.end;
  void get mainAround => mainAxisAlignment = MainAxisAlignment.spaceAround;
  void get mainBetween => mainAxisAlignment = MainAxisAlignment.spaceBetween;
  void get mainEvenly => mainAxisAlignment = MainAxisAlignment.spaceEvenly;

  void get spaceAround => mainAxisAlignment = MainAxisAlignment.spaceAround;
  void get spaceBetween => mainAxisAlignment = MainAxisAlignment.spaceBetween;
  void get spaceEvenly => mainAxisAlignment = MainAxisAlignment.spaceEvenly;
  void get around => mainAxisAlignment = MainAxisAlignment.spaceAround;
  void get between => mainAxisAlignment = MainAxisAlignment.spaceBetween;
  void get evenly => mainAxisAlignment = MainAxisAlignment.spaceEvenly;

  set crossAxis(MainAxisAlignment value) => mainAxisAlignment = value;
  void get crossStart => crossAxisAlignment = CrossAxisAlignment.start;
  void get crossCenter => crossAxisAlignment = CrossAxisAlignment.center;
  void get crossEnd => crossAxisAlignment = CrossAxisAlignment.end;
  void get crossBaseline => crossAxisAlignment = CrossAxisAlignment.baseline;
  void get crossStretch => crossAxisAlignment = CrossAxisAlignment.stretch;

  void get baseline => crossAxisAlignment = CrossAxisAlignment.baseline;
  void get stretch => crossAxisAlignment = CrossAxisAlignment.stretch;

  void get center {
    mainAxisAlignment = MainAxisAlignment.center;
    crossAxisAlignment = CrossAxisAlignment.center;
  }

  void get min => mainAxisSize = MainAxisSize.min;
  void get max => mainAxisSize = MainAxisSize.max;

  void get up => verticalDirection = VerticalDirection.up;
  void get down => verticalDirection = VerticalDirection.down;
}
