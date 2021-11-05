import 'package:flutter/material.dart';

class NikuEdgeInsets {
  double? top;
  double? left;
  double? bottom;
  double? right;

  NikuEdgeInsets({
    this.top,
    this.left,
    this.bottom,
    this.right,
  });

  factory NikuEdgeInsets.all(double value) => NikuEdgeInsets(
        top: value,
        left: value,
        bottom: value,
        right: value,
      );

  set pt(double padding) => top = padding;
  set pl(double padding) => left = padding;
  set pb(double padding) => bottom = padding;
  set pr(double padding) => right = padding;

  set px(double padding) {
    left = padding;
    right = padding;
  }

  set py(double padding) {
    top = padding;
    bottom = padding;
  }

  set p(double padding) {
    top = padding;
    left = padding;
    bottom = padding;
    right = padding;
  }

  EdgeInsets get value => EdgeInsets.only(
        top: top ?? 0,
        left: left ?? 0,
        bottom: bottom ?? 0,
        right: right ?? 0,
      );
}

extension TransformNikuEdgeInsets on EdgeInsetsGeometry {
  NikuEdgeInsets get niku => NikuEdgeInsets(
        top: (this as EdgeInsets).top,
        left: (this as EdgeInsets).left,
        bottom: (this as EdgeInsets).bottom,
        right: (this as EdgeInsets).right,
      );
}
