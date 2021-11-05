import 'package:flutter/material.dart';

abstract class GapMacro {
  List<Widget> children = [];
  List<Widget>? childrenWithGap;

  set gap(double? height) {
    if (height == null) return childrenWithGap = null;

    childrenWithGap = [...children];

    for (int index = 0; index < children.length; index++)
      if (index != 0)
        childrenWithGap!.insert(
          index * 2,
          SizedBox(height: height),
        );

    childrenWithGap!.insert(
      1,
      SizedBox(width: 1, height: height),
    );
  }
}
