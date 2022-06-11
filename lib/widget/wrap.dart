import 'package:flutter/material.dart';

import '../macros/macros.dart';

// ignore: must_be_immutable
class NikuWrap extends StatelessWidget
    with
        NikuBuildMacro<NikuWrap>,
        UseQueryMacro<NikuWrap>,
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

  NikuWrap get self => this;

  set apply(NikuWrap? v) {
    if (v == null) return;

    this.direction = v.direction ?? direction;
    this.alignment = v.alignment ?? alignment;
    this.spacing = v.spacing ?? spacing;
    this.runAlignment = v.runAlignment ?? runAlignment;
    this.runSpacing = v.runSpacing ?? runSpacing;
    this.crossAxisAlignment = v.crossAxisAlignment ?? crossAxisAlignment;
    this.textDirection = v.textDirection ?? textDirection;
    this.verticalDirection = v.verticalDirection ?? verticalDirection;
    this.clipBehavior = v.clipBehavior ?? clipBehavior;

    $internalParent..addAll(v.$internalParent);
  }

  NikuWrap get copied => NikuWrap(
        chidren,
        key: key,
        direction: direction,
        alignment: alignment,
        spacing: spacing,
        runAlignment: runAlignment,
        runSpacing: runSpacing,
        crossAxisAlignment: crossAxisAlignment,
        textDirection: textDirection,
        verticalDirection: verticalDirection,
        clipBehavior: clipBehavior,
      )..$internalParent.addAll($internalParent);

  Wrap get widget => Wrap(
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
