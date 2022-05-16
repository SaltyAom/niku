import 'package:flutter/material.dart';

import '../../macros/macros.dart';
import '../../proxy/proxy.dart';

// ignore: must_be_immutable
class NikuRow extends StatelessWidget
    with
        AxisLayoutProxy,
        NikuBuildMacro<NikuRow>,
        ClipMacro,
        CrossAxisAlignmentMacro,
        GapMacro,
        MainAxisAlignmentMacro,
        MainAxisSizeMacro,
        TextBaselineMacro,
        TextDirectionMacro,
        VerticalDirecrtionMacro {
  List<Widget> children;

  MainAxisAlignment? mainAxisAlignment;
  MainAxisSize? mainAxisSize;
  CrossAxisAlignment? crossAxisAlignment;
  TextDirection? textDirection;
  VerticalDirection? verticalDirection;
  TextBaseline? textBaseline;
  Clip? clipBehavior;
  double? gap;
  Key? key;

  NikuRow(
    this.children, {
    this.key,
    this.mainAxisAlignment,
    this.mainAxisSize,
    this.crossAxisAlignment,
    this.textDirection,
    this.verticalDirection,
    this.textBaseline,
    this.gap,
  }) : super(key: key);

  NikuRow get self => this;

  set apply(NikuRow? v) {
    if (v == null) return;

    mainAxisAlignment = v.mainAxisAlignment ?? mainAxisAlignment;
    mainAxisSize = v.mainAxisSize ?? mainAxisSize;
    crossAxisAlignment = v.crossAxisAlignment ?? crossAxisAlignment;
    textDirection = v.textDirection ?? textDirection;
    textBaseline = v.textBaseline ?? textBaseline;
    gap = v.gap ?? gap;

    $parent..$merge(v.$parent);
  }

  NikuRow get copied => NikuRow(
        children,
        key: key,
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        crossAxisAlignment: crossAxisAlignment,
        textDirection: textDirection,
        verticalDirection: verticalDirection,
        textBaseline: textBaseline,
      )..$parent.$merge($parent);

  widget(context) => Row(
        children: $internalComposeGap(GapType.row, gap),
        key: key,
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down,
        textBaseline: textBaseline,
      );
}

extension NikuRowTransform on Column {
  NikuRow get asNiku => NikuRow(
        children,
        mainAxisAlignment: mainAxisAlignment == MainAxisAlignment.start
            ? null
            : mainAxisAlignment,
        mainAxisSize: mainAxisSize == MainAxisSize.max ? null : mainAxisSize,
        crossAxisAlignment: crossAxisAlignment == CrossAxisAlignment.center
            ? null
            : crossAxisAlignment,
        textDirection: textDirection,
        verticalDirection: verticalDirection == VerticalDirection.down
            ? null
            : verticalDirection,
        textBaseline: textBaseline,
      );
}
