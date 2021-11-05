import 'package:flutter/material.dart';

abstract class FontWeightMacro {
  FontWeight? fontWeight;

  void get w100 => fontWeight = FontWeight.w100;
  void get w200 => fontWeight = FontWeight.w200;
  void get w300 => fontWeight = FontWeight.w300;
  void get w400 => fontWeight = FontWeight.w400;
  void get w500 => fontWeight = FontWeight.w500;
  void get w600 => fontWeight = FontWeight.w600;
  void get w700 => fontWeight = FontWeight.w700;
  void get w800 => fontWeight = FontWeight.w800;
  void get w900 => fontWeight = FontWeight.w900;

  void get bold => fontWeight = FontWeight.bold;
}
