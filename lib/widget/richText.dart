// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import '../macros/macros.dart';
import '../objects/objects.dart';
import 'textSpan.dart';

class NikuRichText extends StatelessWidget
    with
        NikuBuildMacro<NikuRichText>,
        ApplyStrutStyleMacro,
        TextAlignMacro,
        TextDirectionMacro,
        TextBaselineMacro {
  Key? key;
  NikuTextSpan text;
  TextAlign? textAlign;
  TextDirection? textDirection;
  bool? softWrap;
  TextOverflow? overflow;
  double? textScaleFactor;
  int? maxLines;
  Locale? locale;
  NikuStrutStyle? strutStyle;
  TextWidthBasis? textWidthBasis;
  ui.TextHeightBehavior? textHeightBehavior;

  NikuRichText(
    this.text, {
    this.key,
    this.textAlign,
    this.textDirection,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.locale,
    this.strutStyle,
    this.textWidthBasis,
    this.textHeightBehavior,
  }) : super(key: key);

  NikuRichText get self => this;

  void get singleLine => maxLines = 1;

  set apply(NikuRichText? v) {
    if (v == null) return null;

    if (strutStyle == null && v.strutStyle != null)
      strutStyle = NikuStrutStyle();

    textAlign = v.textAlign ?? textAlign;
    textDirection = v.textDirection ?? textDirection;
    softWrap = v.softWrap ?? softWrap;
    overflow = v.overflow ?? overflow;
    textScaleFactor = v.textScaleFactor ?? textScaleFactor;
    maxLines = v.maxLines ?? maxLines;
    locale = v.locale ?? locale;
    strutStyle = v.strutStyle ?? strutStyle;
    textWidthBasis = v.textWidthBasis ?? textWidthBasis;
    textHeightBehavior = v.textHeightBehavior ?? textHeightBehavior;

    $internalParent..addAll(v.$internalParent);
  }

  NikuRichText get copied => NikuRichText(
        text,
        key: key,
        textAlign: textAlign,
        textDirection: textDirection,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        locale: locale,
        strutStyle: strutStyle,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior,
      )..$internalParent.addAll($internalParent);

  RichText get widget => RichText(
        key: key,
        text: text.value,
        textAlign: textAlign ?? TextAlign.start,
        textDirection: textDirection,
        softWrap: softWrap ?? true,
        overflow: overflow ?? TextOverflow.clip,
        textScaleFactor: textScaleFactor ?? 1.0,
        maxLines: maxLines,
        locale: locale,
        strutStyle: strutStyle?.value,
        textWidthBasis: textWidthBasis ?? TextWidthBasis.parent,
        textHeightBehavior: textHeightBehavior,
      );
}
