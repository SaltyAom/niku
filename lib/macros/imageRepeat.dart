import 'package:flutter/material.dart';

abstract class ImageRepeatMacro {
  ImageRepeat? repeat;

  void get repeatNone => repeat = ImageRepeat.noRepeat;
  void get repeatX => repeat = ImageRepeat.repeatX;
  void get repeatY => repeat = ImageRepeat.repeatY;
  void get repeatAll => repeat = ImageRepeat.repeat;
  void get repeatXY => repeat = ImageRepeat.repeat;
}
