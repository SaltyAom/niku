import 'package:flutter/material.dart';

abstract class GapMacro {
  List<Widget> children = [];
  List<Widget>? childrenWithGap;

  set gap(double? height) {
    if (height == null) return childrenWithGap = null;

    if (children.length == 0) return;

    childrenWithGap = [...children];

    for (int index = 1; index < children.length - 1; index++)
      childrenWithGap!.insert(
        index * 2,
        SizedBox(height: height),
      );

    childrenWithGap!.insert(
      1,
      SizedBox(height: height),
    );
  }
}
