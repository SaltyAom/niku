import 'package:flutter/material.dart';

abstract class TextAlignMixin {
  TextAlign? textAlign;

  void get left => textAlign = TextAlign.left;
  void get center => textAlign = TextAlign.center;
  void get right => textAlign = TextAlign.right;
  void get start => textAlign = TextAlign.start;
  void get justify => textAlign = TextAlign.justify;
  void get end => textAlign = TextAlign.end;
}
