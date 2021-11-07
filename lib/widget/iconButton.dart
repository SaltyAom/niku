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
  Widget? child;
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
    IconData? icon, {
    Key? key,
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
  }) : super(key: key) {
    if (icon != null)
      child = Icon(icon);
    else
      child = SizedBox.shrink();
  }

  factory NikuIconButton.widget(
    Widget? child, {
    void Function()? onPressed,
    double? iconSize,
    VisualDensity? visualDensity,
    NikuEdgeInsets? padding,
    AlignmentGeometry? alignment,
    double? splashRadius,
    Color? focusColor,
    Color? hoverColor,
    Color? color,
    Color? splashColor,
    Color? highlightColor,
    Color? disabledColor,
    MouseCursor? mouseCursor,
    FocusNode? focusNode,
    bool? autofocus,
    String? tooltip,
    bool? enableFeedback,
    NikuBoxConstraints? constraints,
  }) =>
      NikuIconButton(
        Icons.home,
        iconSize: iconSize,
        visualDensity: visualDensity,
        padding: padding,
        alignment: alignment,
        splashRadius: splashRadius,
        color: color,
        focusColor: focusColor,
        hoverColor: hoverColor,
        highlightColor: highlightColor,
        splashColor: splashColor,
        disabledColor: disabledColor,
        onPressed: onPressed,
        mouseCursor: mouseCursor,
        focusNode: focusNode,
        autofocus: autofocus,
        tooltip: tooltip,
        enableFeedback: enableFeedback,
        constraints: constraints,
      )..child = child;

  set icon(Widget v) => child = v;

  set apply(NikuIconButton? v) {
    if (v == null) return;

    onPressed ??= v.onPressed;
    iconSize ??= v.iconSize;
    visualDensity ??= v.visualDensity;
    padding ??= v.padding;
    alignment ??= v.alignment;
    splashRadius ??= v.splashRadius;
    color ??= v.color;
    focusColor ??= v.focusColor;
    hoverColor ??= v.hoverColor;
    highlightColor ??= v.highlightColor;
    splashColor ??= v.splashColor;
    disabledColor ??= v.disabledColor;
    onPressed ??= v.onPressed;
    mouseCursor ??= v.mouseCursor;
    focusNode ??= v.focusNode;
    autofocus ??= v.autofocus;
    tooltip ??= v.tooltip;
    enableFeedback ??= v.enableFeedback;
    constraints ??= v.constraints;
  }

  NikuIconButton get copy => NikuIconButton(
        Icons.home,
        key: key,
        iconSize: iconSize,
        visualDensity: visualDensity,
        padding: padding,
        alignment: alignment,
        splashRadius: splashRadius,
        color: color,
        focusColor: focusColor,
        hoverColor: hoverColor,
        highlightColor: highlightColor,
        splashColor: splashColor,
        disabledColor: disabledColor,
        onPressed: onPressed,
        mouseCursor: mouseCursor,
        focusNode: focusNode,
        autofocus: autofocus,
        tooltip: tooltip,
        enableFeedback: enableFeedback,
        constraints: constraints,
      )..child = child;

  IconButton get value => IconButton(
        icon: child ?? SizedBox.shrink(),
        onPressed: onPressed ?? null,
        iconSize: iconSize ?? 24,
        visualDensity: visualDensity,
        padding: padding?.value != EdgeInsets.all(8.0)
            ? padding?.value ?? EdgeInsets.all(8.0)
            : const EdgeInsets.all(8.0),
        alignment: alignment ?? Alignment.center,
        splashRadius: splashRadius,
        color: color,
        focusColor: focusColor,
        hoverColor: hoverColor,
        highlightColor: highlightColor,
        splashColor: splashColor,
        disabledColor: disabledColor,
        mouseCursor: mouseCursor ?? SystemMouseCursors.click,
        focusNode: focusNode,
        autofocus: autofocus ?? false,
        tooltip: tooltip,
        enableFeedback: enableFeedback ?? true,
        constraints: constraints?.value,
      );
}
