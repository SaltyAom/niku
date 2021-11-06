import 'package:flutter/material.dart';

import '../macros/macros.dart';

// ignore: must_be_immutable
class NikuWrap extends StatelessWidget
    with
        NikuBuildMacro,
        AxisMacro,
        ClipMacro,
        RunAlignmentMacro,
        VerticalDirecrtionMacro,
        WrapAlignmentMacro,
        WrapCrossAxisAlignmentMacro {
  List<Widget> chidren;

  Axis? direction;
  WrapAlignment? alignment;
  double? spacing;
  WrapAlignment? runAlignment;
  double? runSpacing;
  WrapCrossAlignment? crossAxisAlignment;
  TextDirection? textDirection;
  VerticalDirection? verticalDirection;
  Clip? clipBehavior;

  NikuWrap(
    this.chidren, {
    Key? key,
    this.direction,
    this.alignment,
    this.spacing,
    this.runAlignment,
    this.runSpacing,
    this.crossAxisAlignment,
    this.textDirection,
    this.verticalDirection,
    this.clipBehavior,
  }) : super(key: key);

  set apply(NikuWrap? v) {
    if (v == null) return;

    this.chidren = v.chidren;
    this.direction = v.direction;
    this.alignment = v.alignment;
    this.spacing = v.spacing;
    this.runAlignment = v.runAlignment;
    this.runSpacing = v.runSpacing;
    this.crossAxisAlignment = v.crossAxisAlignment;
    this.textDirection = v.textDirection;
    this.verticalDirection = v.verticalDirection;
    this.clipBehavior = v.clipBehavior;
  }

  Wrap get value => Wrap(
        children: chidren,
        key: key,
        direction: direction ?? Axis.horizontal,
        alignment: alignment ?? WrapAlignment.start,
        spacing: spacing ?? 0,
        runAlignment: runAlignment ?? WrapAlignment.start,
        runSpacing: runSpacing ?? 0,
        crossAxisAlignment: crossAxisAlignment ?? WrapCrossAlignment.start,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down,
        clipBehavior: clipBehavior ?? Clip.none,
      );
}

extension TransformNikuWrap on Wrap {
  get niku => NikuWrap(
        children,
        direction: direction == Axis.horizontal ? null : direction,
        alignment: alignment == WrapAlignment.start ? null : alignment,
        spacing: spacing == 0 ? null : spacing,
        runAlignment: runAlignment == WrapAlignment.start ? null : runAlignment,
        runSpacing: runSpacing == 0 ? null : runSpacing,
        crossAxisAlignment: crossAxisAlignment == WrapCrossAlignment.start
            ? crossAxisAlignment
            : null,
        textDirection: textDirection,
        verticalDirection: verticalDirection == VerticalDirection.down
            ? null
            : verticalDirection,
        clipBehavior: clipBehavior == Clip.none ? null : clipBehavior,
      );
}
