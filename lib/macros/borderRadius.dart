import 'package:flutter/material.dart';

abstract class BorderRadiusMacro {
  BorderRadius? borderRadius;

  double get rounded {
    borderRadius = BorderRadius.all(Radius.circular(999999));

    return 999999;
  }

  set rounded(double v) =>
      borderRadius = BorderRadius.all(Radius.circular(999999));
}
