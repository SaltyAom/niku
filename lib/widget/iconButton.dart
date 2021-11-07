import 'package:flutter/material.dart';

import '../macros/macros.dart';
import '../objects/objects.dart';

// ignore: must_be_immutable
class NikuIconButton extends StatelessWidget
    with
        NikuBuildMacro,
        AlignmentDirectionalMacro,
        ConstraintsMacro,
        PaddingMacro {
  Widget child;
  void Function()? onPressed;

  double? iconSize;
  VisualDensity? visualDensity;
  NikuEdgeInsets? padding;
  AlignmentGeometry? alignment;
  double? splashRadius;
  Color? focusColor;
  Color? hoverColor;
  Color? color;
  Color? splashColor;
  Color? highlightColor;
  Color? disabledColor;
  MouseCursor? mouseCursor;
  FocusNode? focusNode;
  bool? autofocus;
  String? tooltip;
  bool? enableFeedback;
  NikuBoxConstraints? constraints;

  NikuIconButton(
    this.child, {
    this.iconSize,
    this.visualDensity,
    this.padding,
    this.alignment,
    this.splashRadius,
    this.color,
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.splashColor,
    this.disabledColor,
    this.onPressed,
    this.mouseCursor,
    this.focusNode,
    this.autofocus,
    this.tooltip,
    this.enableFeedback,
    this.constraints,
  });

  set icon(Widget v) => child = v;

  set apply(NikuIconButton? v) {
    if (v == null) return;

    iconSize ??= iconSize;
    visualDensity ??= visualDensity;
    padding ??= padding;
    alignment ??= alignment;
    splashRadius ??= splashRadius;
    color ??= color;
    focusColor ??= focusColor;
    hoverColor ??= hoverColor;
    highlightColor ??= highlightColor;
    splashColor ??= splashColor;
    disabledColor ??= disabledColor;
    onPressed ??= onPressed;
    mouseCursor ??= mouseCursor;
    focusNode ??= focusNode;
    autofocus ??= autofocus;
    tooltip ??= tooltip;
    enableFeedback ??= enableFeedback;
    constraints ??= constraints;
  }

  IconButton get value => IconButton(
        onPressed: onPressed ?? null,
        icon: child,
      );
}
