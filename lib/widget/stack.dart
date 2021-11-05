import 'package:flutter/material.dart';

import '../macros/macros.dart';

// ignore: must_be_immutable
class NikuStack extends StatelessWidget
    with AlignmentDirectionalMacro, ClipMacro, FitMacro, TextDirectionMacro {
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

  set apply(NikuStack? stack) {
    if (stack == null) return;

    alignment = stack.alignment;
    textDirection = stack.textDirection;
    fit = stack.fit;
    clipBehavior = stack.clipBehavior;
  }

  @override
  Stack build(context) {
    return Stack(
      key: key,
      children: children,
      alignment: alignment ?? AlignmentDirectional.topStart,
      textDirection: textDirection,
      fit: fit ?? StackFit.loose,
      clipBehavior: clipBehavior ?? Clip.hardEdge,
    );
  }
}

extension NikuStackTransform on Stack {
  NikuStack get niku => NikuStack(
        children,
        alignment:
            alignment == AlignmentDirectional.topStart ? null : alignment,
        textDirection: textDirection,
        fit: fit == StackFit.loose ? null : fit,
        clipBehavior: clipBehavior == Clip.hardEdge ? null : clipBehavior,
      );
}
