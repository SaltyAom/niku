import 'package:flutter/material.dart';

import '../../macros/macros.dart';

// ignore: must_be_immutable
class NikuRow extends StatelessWidget
    with
        ClipMacro,
        CrossAxisAlignmentMacro,
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

  NikuRow(
    this.children, {
    Key? key,
    this.mainAxisAlignment,
    this.mainAxisSize,
    this.crossAxisAlignment,
    this.textDirection,
    this.verticalDirection,
    this.textBaseline,
  }) : super(key: key);

  set apply(NikuRow? row) {
    if (row == null) return;

    mainAxisAlignment = row.mainAxisAlignment ?? mainAxisAlignment;
    mainAxisSize = row.mainAxisSize ?? mainAxisSize;
    crossAxisAlignment = row.crossAxisAlignment ?? crossAxisAlignment;
    textDirection = row.textDirection ?? textDirection;
    textBaseline = row.textBaseline ?? textBaseline;
  }

  @override
  Column build(context) {
    return Column(
      children: children,
      key: key,
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      mainAxisSize: mainAxisSize ?? MainAxisSize.max,
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
      textDirection: textDirection,
      verticalDirection: verticalDirection ?? VerticalDirection.down,
      textBaseline: textBaseline,
    );
  }
}

extension NikuRowTransform on Column {
  NikuRow get niku => NikuRow(
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
