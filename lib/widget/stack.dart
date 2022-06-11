import 'package:flutter/material.dart';

import '../macros/macros.dart';

// ignore: must_be_immutable
class NikuStack extends StatelessWidget
    with
        NikuBuildMacro<NikuStack>,
        AlignmentDirectionalMacro,
        ClipMacro,
        FitMacro,
        TextDirectionMacro {
  List<Widget> children;
  AlignmentGeometry? alignment;
  TextDirection? textDirection;
  StackFit? fit;
  Clip? clipBehavior;

  NikuStack(
    this.children, {
    Key? key,
    this.alignment,
    this.textDirection,
    this.fit,
    this.clipBehavior,
  }) : super(key: key);

  NikuStack get self => this;

  set apply(NikuStack? v) {
    if (v == null) return;

    alignment = v.alignment ?? alignment;
    textDirection = v.textDirection ?? textDirection;
    fit = v.fit ?? fit;
    clipBehavior = v.clipBehavior ?? clipBehavior;

    $parent..$merge(v.$parent);
  }

  NikuStack get copied => NikuStack(
        this.children,
        key: key,
        alignment: alignment,
        textDirection: textDirection,
        fit: fit,
        clipBehavior: clipBehavior,
      )..$parent.$merge($parent);

  widget(context) => Stack(
        key: key,
        children: children,
        alignment: alignment ?? AlignmentDirectional.topStart,
        textDirection: textDirection,
        fit: fit ?? StackFit.loose,
        clipBehavior: clipBehavior ?? Clip.hardEdge,
      );
}

extension NikuStackTransform on Stack {
  NikuStack get asNiku => NikuStack(
        children,
        alignment:
            alignment == AlignmentDirectional.topStart ? null : alignment,
        textDirection: textDirection,
        fit: fit == StackFit.loose ? null : fit,
        clipBehavior: clipBehavior == Clip.hardEdge ? null : clipBehavior,
      );
}
