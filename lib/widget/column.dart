import 'package:flutter/material.dart';

import '../mixins/mixins.dart';

// ignore: must_be_immutable
class NikuColumn extends StatelessWidget
    with AxisMixin, TextBaselineMixin, TextDirectionMixin {
  List<Widget> children;

  MainAxisAlignment? mainAxisAlignment;
  MainAxisSize? mainAxisSize;
  CrossAxisAlignment? crossAxisAlignment;
  TextDirection? textDirection;
  VerticalDirection? verticalDirection;
  TextBaseline? textBaseline;
  Clip? clipBehavior;

  NikuColumn(
    this.children, {
    Key? key,
    this.mainAxisAlignment,
    this.mainAxisSize,
    this.crossAxisAlignment,
    this.textDirection,
    this.verticalDirection,
    this.textBaseline,
  }) : super(key: key);

  set apply(NikuColumn? column) {
    if (column == null) return;

    mainAxisAlignment = column.mainAxisAlignment ?? mainAxisAlignment;
    mainAxisSize = column.mainAxisSize ?? mainAxisSize;
    crossAxisAlignment = column.crossAxisAlignment ?? crossAxisAlignment;
    textDirection = column.textDirection ?? textDirection;
    textBaseline = column.textBaseline ?? textBaseline;
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

extension NikuColumnTransform on Column {
  NikuColumn get niku => NikuColumn(
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
