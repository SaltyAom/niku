import 'package:flutter/material.dart';

import 'package:niku/macros/macros.dart';
import 'package:niku/objects/objects.dart';

import '../proxy/textStyle.dart';

// ignore: must_be_immutable
class NikuActionChip extends StatelessWidget
    with
        NikuBuildMacro<NikuActionChip>,
        FocusNodeMacro,
        PaddingMacro,
        LabelPaddingFullMacro,
        TextStyleProxy {
  Key? key;
  Widget? avatar;
  Widget? label;
  NikuTextStyle? style;
  NikuEdgeInsets? labelPadding;
  VoidCallback? onPressed;
  double? pressElevation;
  String? tooltip;
  BorderSide? side;
  OutlinedBorder? shape;
  Clip? clipBehavior;
  FocusNode? focusNode;
  bool? autofocus;
  Color? backgroundColor;
  Color? disabledColor;
  NikuEdgeInsets? padding;
  VisualDensity? visualDensity;
  MaterialTapTargetSize? materialTapTargetSize;
  double? elevation;
  Color? shadowColor;
  Color? surfaceTintColor;
  IconThemeData? iconTheme;

  NikuActionChip(
    this.label, {
    this.key,
    this.avatar,
    this.style,
    this.labelPadding,
    this.onPressed,
    this.pressElevation,
    this.tooltip,
    this.side,
    this.shape,
    this.clipBehavior,
    this.focusNode,
    this.autofocus,
    this.backgroundColor,
    this.disabledColor,
    this.padding,
    this.visualDensity,
    this.materialTapTargetSize,
    this.elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.iconTheme,
  }) : super(key: key);

  factory NikuActionChip.icon(
    IconData? avatar,
    Widget? label, {
    Key? key,
    NikuTextStyle? style,
    NikuEdgeInsets? labelPadding,
    VoidCallback? onPressed,
    double? pressElevation,
    String? tooltip,
    BorderSide? side,
    OutlinedBorder? shape,
    Clip? clipBehavior,
    FocusNode? focusNode,
    bool? autofocus,
    Color? backgroundColor,
    Color? disabledColor,
    NikuEdgeInsets? padding,
    VisualDensity? visualDensity,
    MaterialTapTargetSize? materialTapTargetSize,
    double? elevation,
    Color? shadowColor,
    Color? surfaceTintColor,
    IconThemeData? iconTheme,
  }) {
    return NikuActionChip(
      label,
      key: key,
      avatar: Icon(avatar),
      style: style,
      labelPadding: labelPadding,
      onPressed: onPressed,
      pressElevation: pressElevation,
      tooltip: tooltip,
      side: side,
      shape: shape,
      clipBehavior: clipBehavior,
      focusNode: focusNode,
      autofocus: autofocus,
      backgroundColor: backgroundColor,
      disabledColor: disabledColor,
      padding: padding,
      visualDensity: visualDensity,
      materialTapTargetSize: materialTapTargetSize,
      elevation: elevation,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      iconTheme: iconTheme,
    );
  }

  NikuActionChip get self => this;
  set bg(Color? color) {
    this.backgroundColor = color;
  }

  set apply(NikuActionChip? v) {
    if (v == null) return;

    key = v.key ?? key;
    avatar = v.avatar ?? avatar;
    label = v.label ?? label;
    style = v.style ?? style;
    labelPadding = v.labelPadding ?? labelPadding;
    onPressed = v.onPressed ?? onPressed;
    pressElevation = v.pressElevation ?? pressElevation;
    tooltip = v.tooltip ?? tooltip;
    side = v.side ?? side;
    shape = v.shape ?? shape;
    clipBehavior = v.clipBehavior ?? clipBehavior;
    focusNode = v.focusNode ?? focusNode;
    autofocus = v.autofocus ?? autofocus;
    backgroundColor = v.backgroundColor ?? backgroundColor;
    disabledColor = v.disabledColor ?? disabledColor;
    padding = v.padding ?? padding;
    visualDensity = v.visualDensity ?? visualDensity;
    materialTapTargetSize = v.materialTapTargetSize ?? materialTapTargetSize;
    elevation = v.elevation ?? elevation;
    shadowColor = v.shadowColor ?? shadowColor;
    surfaceTintColor = v.surfaceTintColor ?? surfaceTintColor;
    iconTheme = v.iconTheme ?? iconTheme;

    $parent..$merge(v.$parent);
  }

  NikuActionChip get copied => NikuActionChip(
        label,
        key: key,
        avatar: avatar,
        style: style,
        labelPadding: labelPadding,
        onPressed: onPressed,
        pressElevation: pressElevation,
        tooltip: tooltip,
        side: side,
        shape: shape,
        clipBehavior: clipBehavior,
        focusNode: focusNode,
        autofocus: autofocus,
        backgroundColor: backgroundColor,
        disabledColor: disabledColor,
        padding: padding,
        visualDensity: visualDensity,
        materialTapTargetSize: materialTapTargetSize,
        elevation: elevation,
        shadowColor: shadowColor,
        surfaceTintColor: surfaceTintColor,
        iconTheme: iconTheme,
      )..$parent.$merge($parent);

  widget(context) {
    return ActionChip(
      key: key,
      avatar: avatar,
      label: label ?? Text(""),
      labelStyle: style?.value,
      labelPadding: labelPadding?.value,
      onPressed: onPressed,
      pressElevation: pressElevation,
      tooltip: tooltip,
      side: side,
      shape: shape,
      clipBehavior: clipBehavior ?? Clip.none,
      focusNode: focusNode,
      autofocus: autofocus ?? false,
      backgroundColor: backgroundColor,
      disabledColor: disabledColor,
      padding: padding?.value,
      visualDensity: visualDensity,
      materialTapTargetSize: materialTapTargetSize,
      elevation: elevation,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      iconTheme: iconTheme,
    );
  }
}
