// ignore_for_file: deprecated_member_use_from_same_package
import 'package:flutter/material.dart';

import '../objects/objects.dart';
import '../macros/macros.dart';

// ignore: must_be_immutable
class NikuText extends StatelessWidget
    with
        NikuBuildMacro,
        UseQueryMacro<NikuText>,
        ApplyTextMacro,
        ApplyStrutStyleMacro,
        MapTextStyleMacro,
        TextAlignMacro,
        TextDirectionMacro,
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
    Key? key,
    this.style,
    this.strutStyle,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
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

    $internalParent..addAll(v.$internalParent);
  }

  use(List<NikuText> v) {
    v.forEach((e) => apply = e);
  }

  NikuText get copied => NikuText(
        text,
        style: style,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        locale: locale,
        softWrap: softWrap,
        overflow: overflow,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior,
      )..$internalParent.addAll($internalParent);

  Widget get widget => Text(
        text ?? "",
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
  NikuText get asNiku => NikuText(
        data,
        style: style?.asNiku,
        strutStyle: strutStyle?.asNiku,
        textAlign: textAlign != TextAlign.left ? textAlign : null,
        textDirection:
            textDirection != TextDirection.ltr ? textDirection : null,
        locale: locale,
        softWrap: softWrap != true ? softWrap : null,
        overflow: overflow != TextOverflow.clip ? overflow : null,
        textScaleFactor: textScaleFactor != 1.0 ? textScaleFactor : null,
        maxLines: maxLines != 1 ? maxLines : null,
        semanticsLabel: semanticsLabel,
        textWidthBasis:
            textWidthBasis != TextWidthBasis.parent ? textWidthBasis : null,
        textHeightBehavior: textHeightBehavior,
      );
}
