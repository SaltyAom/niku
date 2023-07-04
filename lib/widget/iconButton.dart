import 'package:flutter/material.dart';

import '../macros/macros.dart';
import '../objects/objects.dart';

// ignore: unused_field
enum _NikuIconButtonVariant { standard, filled, filledTonal, outlined }

// ignore: must_be_immutable
class NikuIconButton extends StatelessWidget
    with
        NikuBuildMacro<NikuIconButton>,
        AlignmentDirectionalMacro,
        ConstraintsMacro,
        FocusNodeMacro,
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
  _NikuIconButtonVariant? variant;

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
    this.variant,
  }) : super(key: key) {
    child = icon != null ? Icon(icon) : SizedBox.shrink();
  }

  factory NikuIconButton.filled(
    IconData icon, {
    Key? key,
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
  }) {
    return NikuIconButton(
      icon,
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
      variant: _NikuIconButtonVariant.filled,
    );
  }

  factory NikuIconButton.tonal(
    IconData icon, {
    Key? key,
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
  }) {
    return NikuIconButton(
      icon,
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
      variant: _NikuIconButtonVariant.filledTonal,
    );
  }

  factory NikuIconButton.outlined(
    IconData icon, {
    Key? key,
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
  }) {
    return NikuIconButton(
      icon,
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
      variant: _NikuIconButtonVariant.outlined,
    );
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
    Key? key,
    _NikuIconButtonVariant? variant,
  }) =>
      NikuIconButton(
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
        variant: variant,
      )..child = child;

  set icon(Widget v) => child = v;

  NikuIconButton get self => this;

  set apply(NikuIconButton? v) {
    if (v == null) return;

    onPressed = v.onPressed ?? onPressed;
    iconSize = v.iconSize ?? iconSize;
    visualDensity = v.visualDensity ?? visualDensity;
    padding = v.padding ?? padding;
    alignment = v.alignment ?? alignment;
    splashRadius = v.splashRadius ?? splashRadius;
    color = v.color ?? color;
    focusColor = v.focusColor ?? focusColor;
    hoverColor = v.hoverColor ?? hoverColor;
    highlightColor = v.highlightColor ?? highlightColor;
    splashColor = v.splashColor ?? splashColor;
    disabledColor = v.disabledColor ?? disabledColor;
    onPressed = v.onPressed ?? onPressed;
    mouseCursor = v.mouseCursor ?? mouseCursor;
    focusNode = v.focusNode ?? focusNode;
    autofocus = v.autofocus ?? autofocus;
    tooltip = v.tooltip ?? tooltip;
    enableFeedback = v.enableFeedback ?? enableFeedback;
    constraints = v.constraints ?? constraints;
    variant = v.variant ?? variant;

    $parent..$merge(v.$parent);
  }

  NikuIconButton get copied => NikuIconButton(
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
      )
        ..child = child
        ..$parent.$merge($parent);

  widget(context) {
    switch (variant) {
      case _NikuIconButtonVariant.outlined:
        return IconButton.outlined(
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

      case _NikuIconButtonVariant.filledTonal:
        return IconButton.filledTonal(
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

      case _NikuIconButtonVariant.filled:
        return IconButton.filled(
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

      default:
        return IconButton(
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
  }
}

// extension NikuIconButtonTransform on NikuIconButton {
//   NikuIconButton get asNiku => NikuIconButton.widget(
//         widget,
//         key: key,
//         iconSize: iconSize,
//         visualDensity: visualDensity,
//         padding: padding,
//         alignment: alignment,
//         splashRadius: splashRadius,
//         color: color,
//         focusColor: focusColor,
//         hoverColor: hoverColor,
//         highlightColor: highlightColor,
//         splashColor: splashColor,
//         disabledColor: disabledColor,
//         onPressed: onPressed,
//         mouseCursor: mouseCursor,
//         focusNode: focusNode,
//         autofocus: autofocus,
//         tooltip: tooltip,
//         enableFeedback: enableFeedback,
//         constraints: constraints,
//       );
// }
