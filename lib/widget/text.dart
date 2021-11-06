// ignore_for_file: deprecated_member_use_from_same_package

import 'package:flutter/material.dart';

import '../objects/objects.dart';
import '../macros/macros.dart';

// ignore: must_be_immutable
class NikuText extends StatelessWidget
    with
        NikuBuildMacro,
        ApplyTextMacro,
        ApplyStrutStyleMacro,
        TextAlignMacro,
        TextBaselineMacro {
  String? text;

  NikuTextStyle? style;
  NikuStrutStyle? strutStyle;
  TextAlign? textAlign;
  TextDirection? textDirection;
  Locale? locale;
  bool? softWrap;
  TextOverflow? overflow;
  double? textScaleFactor;
  int? maxLines;
  String? semanticsLabel;
  TextWidthBasis? textWidthBasis;
  TextHeightBehavior? textHeightBehavior;

  NikuText(
    this.text, {
    this.style,
    this.strutStyle,
    this.textAlign = TextAlign.left,
    this.textDirection = TextDirection.ltr,
    this.locale,
    this.softWrap = true,
    this.overflow = TextOverflow.clip,
    this.textScaleFactor = 1.0,
    this.maxLines = 1,
    this.semanticsLabel,
    this.textWidthBasis = TextWidthBasis.parent,
    this.textHeightBehavior,
    Key? key,
  }) : super(key: key);

  set apply(NikuText? v) {
    if (v == null) return;

    if (style == null && v.style != null) style = NikuTextStyle();
    if (strutStyle == null && v.strutStyle != null)
      strutStyle = NikuStrutStyle();

    style?.apply = v.style;
    strutStyle?.apply = v.strutStyle;
    textAlign = v.textAlign ?? textAlign;
    textDirection = v.textDirection ?? textDirection;
    locale = v.locale ?? locale;
    softWrap = v.softWrap ?? softWrap;
    overflow = v.overflow ?? overflow;
    textScaleFactor = v.textScaleFactor ?? textScaleFactor;
    maxLines = v.maxLines ?? maxLines;
    semanticsLabel = v.semanticsLabel ?? semanticsLabel;
    textWidthBasis = v.textWidthBasis ?? textWidthBasis;
    textHeightBehavior = v.textHeightBehavior ?? textHeightBehavior;
  }

  Widget get value => Text(
        this.text ?? "",
        key: key,
        style: this.style?.value,
        strutStyle: this.strutStyle?.value,
        textAlign: this.textAlign,
        textDirection: this.textDirection,
        locale: this.locale,
        softWrap: this.softWrap,
        overflow: this.overflow,
        textScaleFactor: this.textScaleFactor,
        maxLines: this.maxLines,
        semanticsLabel: this.semanticsLabel,
        textWidthBasis: this.textWidthBasis,
        textHeightBehavior: this.textHeightBehavior,
      );
}

extension NikuTextTransform on Text {
  NikuText get niku => NikuText(
        this.data,
        style: this.style?.niku,
        strutStyle: this.strutStyle?.niku,
        textAlign: this.textAlign,
        textDirection: this.textDirection,
        locale: this.locale,
        softWrap: this.softWrap,
        overflow: this.overflow,
        textScaleFactor: this.textScaleFactor,
        maxLines: this.maxLines,
        semanticsLabel: this.semanticsLabel,
        textWidthBasis: this.textWidthBasis,
        textHeightBehavior: this.textHeightBehavior,
      );
}
