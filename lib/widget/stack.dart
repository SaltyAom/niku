import 'package:flutter/material.dart';

import '../macros/macros.dart';

// ignore: must_be_immutable
class NikuStack extends StatelessWidget
    with
        NikuBuildMacro,
        UseQueryMacro<NikuStack>,
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

  set apply(NikuStack? v) {
    if (v == null) return;

    alignment = v.alignment ?? alignment;
    textDirection = v.textDirection ?? textDirection;
    fit = v.fit ?? fit;
    clipBehavior = v.clipBehavior ?? clipBehavior;

    $internalParent..addAll(v.$internalParent);
  }

  use(List<NikuStack> v) {
    v.forEach((e) => apply = e);
  }

  NikuStack get copied => NikuStack(
        this.children,
        key: key,
        alignment: alignment,
        textDirection: textDirection,
        fit: fit,
        clipBehavior: clipBehavior,
      );

  Stack get widget => Stack(
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
