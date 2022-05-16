// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

import 'package:niku/macros/nikuBuild.dart';

class NikuPadding extends StatelessWidget with NikuBuildMacro<NikuPadding> {
  Widget child;
  double top = 0, right = 0, bottom = 0, left = 0;

  NikuPadding({
    Key? key,
    this.top = 0,
    this.bottom = 0,
    this.left = 0,
    this.right = 0,
    required this.child,
  }) : super(key: key);

  factory NikuPadding.fromPadding(
    EdgeInsets padding, {
    required Widget child,
    Key? key,
  }) =>
      NikuPadding(
        key: key,
        child: child,
        top: padding.top,
        right: padding.right,
        bottom: padding.bottom,
        left: padding.left,
      );

  factory NikuPadding.all(
    double v, {
    required Widget child,
    Key? key,
  }) =>
      NikuPadding(
        key: key,
        child: child,
        top: v,
        right: v,
        bottom: v,
        left: v,
      );

  factory NikuPadding.symmetric({
    double horizontal = 0,
    double vertical = 0,
    required Widget child,
    Key? key,
  }) =>
      NikuPadding(
        key: key,
        child: child,
        top: vertical,
        right: horizontal,
        bottom: vertical,
        left: horizontal,
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

  void add({
    double top = 0,
    double bottom = 0,
    double left = 0,
    double right = 0,
  }) {
    this.top += top;
    this.bottom += bottom;
    this.left += left;
    this.right += right;
  }

  widget(context) => Padding(
        key: key,
        child: child,
        padding: EdgeInsets.only(
          top: top,
          left: left,
          bottom: bottom,
          right: right,
        ),
      );
}
