import 'package:flutter/material.dart';

enum GapType {
  column,
  row,
}

abstract class GapMacro {
  List<Widget> children = [];
  double? gap;

  List<Widget> $internalComposeGap(
    GapType type,
    double? size,
  ) {
    if (size == null || children.length == 0) return children;

    final childrenWithGap = [...children];

    final widget = SizedBox(
      width: type == GapType.row ? size : null,
      height: type == GapType.column ? size : null,
    );

    for (int index = 1; index < children.length - 1; index++)
      childrenWithGap.insert(
        index * 2,
        widget,
      );

    childrenWithGap.insert(1, widget);

    return childrenWithGap;
  }
}
