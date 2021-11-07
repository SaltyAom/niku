import 'package:flutter/material.dart';

enum NikuInputBorderType {
  Outlined,
  Underline,
}

class NikuInputBorder {
  double? width;
  double? radius;
  BorderStyle? style;
  Color? color;
  double? gapPadding;
  BorderRadius? borderRadius;
  NikuInputBorderType? type;

  NikuInputBorder({
    this.width,
    this.radius,
    this.style,
    this.color,
    this.gapPadding,
    this.borderRadius,
    this.type = NikuInputBorderType.Underline,
  });

  factory NikuInputBorder.underline({
    double? width,
    double? radius,
    BorderStyle? style,
    Color? color,
    double? gapPadding,
    BorderRadius? borderRadius,
  }) =>
      NikuInputBorder(
        type: NikuInputBorderType.Underline,
        width: width,
        radius: radius,
        style: style,
        color: color,
        gapPadding: gapPadding,
      );

  factory NikuInputBorder.outlined({
    double? width,
    double? radius,
    BorderStyle? style,
    Color? color,
    double? gapPadding,
    BorderRadius? borderRadius,
  }) =>
      NikuInputBorder(
        type: NikuInputBorderType.Outlined,
        width: width,
        radius: radius,
        style: style,
        color: color,
        gapPadding: gapPadding,
      );

  set apply(NikuInputBorder? v) {
    if (v == null) return;

    width = v.width ?? width;
    radius = v.radius ?? radius;
    style = v.style ?? style;
    color = v.color ?? color;
    gapPadding = v.gapPadding ?? gapPadding;
    borderRadius = v.borderRadius ?? borderRadius;
    type = v.type ?? type;
  }

  UnderlineInputBorder get value => UnderlineInputBorder(
        borderSide: BorderSide(
          width: width ?? 1,
          color: color ?? Colors.grey.shade500,
          style: style ?? BorderStyle.solid,
        ),
        borderRadius: borderRadius ??
            (radius != null
                ? BorderRadius.all(Radius.circular(radius!))
                : BorderRadius.all(Radius.circular(4))),
      );

  UnderlineInputBorder get underline => UnderlineInputBorder(
        borderSide: BorderSide(
          width: width ?? 1,
          color: color ?? Colors.grey.shade500,
          style: style ?? BorderStyle.solid,
        ),
        borderRadius: borderRadius ??
            (radius != null
                ? BorderRadius.all(Radius.circular(radius!))
                : BorderRadius.all(Radius.circular(4))),
      );

  OutlineInputBorder get outlined => OutlineInputBorder(
        borderSide: BorderSide(
          width: width ?? 1,
          color: color ?? Colors.grey.shade500,
          style: style ?? BorderStyle.solid,
        ),
        borderRadius: borderRadius ??
            (radius != null
                ? BorderRadius.all(Radius.circular(radius!))
                : BorderRadius.all(Radius.circular(4))),
        gapPadding: gapPadding ?? 4,
      );
}

extension TransformNikuInputBorder on InputBorder {
  NikuInputBorder get asNiku => NikuInputBorder(
        width: borderSide.width,
        style: borderSide.style,
        color: borderSide.color,
      );
}
