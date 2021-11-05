import 'package:flutter/material.dart';

import '../macros/macros.dart';

class NikuBoxConstraints with ConstraintsMacro {
  double? minWidth;
  double? maxWidth;
  double? minHeight;
  double? maxHeight;

  NikuBoxConstraints({
    this.minWidth,
    this.maxWidth,
    this.minHeight,
    this.maxHeight,
  });

  set apply(NikuBoxConstraints? constraints) {
    if (constraints == null) return;

    minWidth = constraints.minWidth != 0 ? constraints.minWidth : minWidth;
    maxWidth = constraints.maxWidth != double.infinity
        ? constraints.maxWidth
        : maxWidth;
    minHeight = constraints.minHeight != 0 ? constraints.minHeight : minHeight;
    maxHeight = constraints.maxHeight != double.infinity
        ? constraints.maxHeight
        : maxHeight;
  }

  get value => BoxConstraints(
        minWidth: minWidth ?? 0,
        maxHeight: maxWidth ?? double.infinity,
        minHeight: minHeight ?? 0,
        maxWidth: maxHeight ?? double.infinity,
      );
}

extension TransformNikuBoxConstraints on BoxConstraints {
  NikuBoxConstraints get niku => NikuBoxConstraints(
        minWidth: minWidth,
        maxWidth: maxWidth,
        minHeight: minHeight,
        maxHeight: maxHeight,
      );
}
