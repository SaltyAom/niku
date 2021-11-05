import 'package:flutter/material.dart';

import '../objects/objects.dart';
import '../macros/macros.dart';

// ignore: must_be_immutable
class NikuText extends StatelessWidget with TextAlignMacro, TextBaselineMacro {
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

  set apply(NikuText? text) {
    if (text == null) return;

    if (style != null)
      style!.apply = text.style;
    else
      style = text.style;

    if (strutStyle != null)
      strutStyle!.apply = text.strutStyle;
    else
      strutStyle = text.strutStyle;

    textAlign = text.textAlign ?? textAlign;
    textDirection = text.textDirection ?? textDirection;
    locale = text.locale ?? locale;
    softWrap = text.softWrap ?? softWrap;
    overflow = text.overflow ?? overflow;
    textScaleFactor = text.textScaleFactor ?? textScaleFactor;
    maxLines = text.maxLines ?? maxLines;
    semanticsLabel = text.semanticsLabel ?? semanticsLabel;
    textWidthBasis = text.textWidthBasis ?? textWidthBasis;
    textHeightBehavior = text.textHeightBehavior ?? textHeightBehavior;
  }

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

  @override
  Text build(context) {
    return Text(
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
