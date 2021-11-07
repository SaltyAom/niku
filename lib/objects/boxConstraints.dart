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

  set apply(NikuBoxConstraints? v) {
    if (v == null) return;

    minWidth = v.minWidth != 0 ? v.minWidth : minWidth;
    maxWidth = v.maxWidth != double.infinity ? v.maxWidth : maxWidth;
    minHeight = v.minHeight != 0 ? v.minHeight : minHeight;
    maxHeight = v.maxHeight != double.infinity ? v.maxHeight : maxHeight;
  }

  get value => BoxConstraints(
        minWidth: minWidth ?? 0,
        maxHeight: maxWidth ?? double.infinity,
        minHeight: minHeight ?? 0,
        maxWidth: maxHeight ?? double.infinity,
      );
}

extension TransformNikuBoxConstraints on BoxConstraints {
  NikuBoxConstraints get asNiku => NikuBoxConstraints(
        minWidth: minWidth,
        maxWidth: maxWidth,
        minHeight: minHeight,
        maxHeight: maxHeight,
      );
}
