import 'package:flutter/material.dart';

abstract class GapMacro {
  List<Widget> children = [];
  double? gap;

  List<Widget> $internalComposeGap(double? size) {
    if (size == null || children.length == 0) return children;

    final childrenWithGap = [...children];

    for (int index = 1; index < children.length - 1; index++)
      childrenWithGap.insert(
        index * 2,
        SizedBox.square(dimension: size),
      );

    childrenWithGap.insert(1, SizedBox.square(dimension: size));

    return childrenWithGap;
  }
}
