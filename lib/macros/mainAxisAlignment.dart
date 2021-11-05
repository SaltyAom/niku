import 'package:flutter/material.dart';

abstract class MainAxisAlignmentMacro {
  MainAxisAlignment? mainAxisAlignment;

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
}
