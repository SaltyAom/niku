// ignore_for_file: deprecated_member_use_from_same_package
import 'package:flutter/material.dart';
import 'package:niku/widget/selectableText.dart';
import 'dart:ui' as ui;

import 'richText.dart';
import '../objects/objects.dart';
import '../macros/macros.dart';
import 'textSpan.dart';

// ignore: must_be_immutable
class NikuText extends StatelessWidget
    with
        NikuBuildMacro<NikuText>,
        ApplyTextMacro,
        ApplyStrutStyleMacro,
        MapTextStyleMacro,
        TextAlignMacro,
        TextDirectionMacro,
        TextBaselineMacro {
  String? text;

  Key? key;
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
    this.key,
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

  static NikuRichText rich({
    Key? key,
    NikuTextSpan? text,
    TextAlign? textAlign,
    TextDirection? textDirection,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    Locale? locale,
    NikuStrutStyle? strutStyle,
    TextWidthBasis? textWidthBasis,
    ui.TextHeightBehavior? textHeightBehavior,
  }) =>
      NikuRichText(
        text ?? NikuTextSpan(""),
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
      );

  factory NikuText.displayLarge(
    String? text, {
    Key? key,
    TextStyle style = const TextStyle(),
    NikuStrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
  }) =>
      NikuText(
        text,
        key: key,
        style: style.asNiku..displayLarge,
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
      );

  factory NikuText.displayMedium(
    String? text, {
    Key? key,
    TextStyle style = const TextStyle(),
    NikuStrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
  }) =>
      NikuText(
        text,
        key: key,
        style: style.asNiku..displayMedium,
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
      );

  factory NikuText.displaySmall(
    String? text, {
    Key? key,
    TextStyle style = const TextStyle(),
    NikuStrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
  }) =>
      NikuText(
        text,
        key: key,
        style: style.asNiku..displaySmall,
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
      );

  factory NikuText.titleLarge(
    String? text, {
    Key? key,
    TextStyle style = const TextStyle(),
    NikuStrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
  }) =>
      NikuText(
        text,
        key: key,
        style: style.asNiku..titleLarge,
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
      );

  factory NikuText.titleMedium(
    String? text, {
    Key? key,
    TextStyle style = const TextStyle(),
    NikuStrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
  }) =>
      NikuText(
        text,
        key: key,
        style: style.asNiku..titleMedium,
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
      );

  factory NikuText.titleSmall(
    String? text, {
    Key? key,
    TextStyle style = const TextStyle(),
    NikuStrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
  }) =>
      NikuText(
        text,
        key: key,
        style: style.asNiku..titleSmall,
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
      );

  factory NikuText.bodyLarge(
    String? text, {
    Key? key,
    TextStyle style = const TextStyle(),
    NikuStrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
  }) =>
      NikuText(
        text,
        key: key,
        style: style.asNiku..bodyLarge,
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
      );

  factory NikuText.bodyMedium(
    String? text, {
    Key? key,
    TextStyle style = const TextStyle(),
    NikuStrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
  }) =>
      NikuText(
        text,
        key: key,
        style: style.asNiku..bodyMedium,
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
      );

  factory NikuText.bodySmall(
    String? text, {
    Key? key,
    TextStyle style = const TextStyle(),
    NikuStrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
  }) =>
      NikuText(
        text,
        key: key,
        style: style.asNiku..bodySmall,
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
      );

  factory NikuText.labelLarge(
    String? text, {
    Key? key,
    TextStyle style = const TextStyle(),
    NikuStrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
  }) =>
      NikuText(
        text,
        key: key,
        style: style.asNiku..labelLarge,
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
      );

  factory NikuText.labelMedium(
    String? text, {
    Key? key,
    TextStyle style = const TextStyle(),
    NikuStrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
  }) =>
      NikuText(
        text,
        key: key,
        style: style.asNiku..labelMedium,
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
      );

  factory NikuText.labelSmall(
    String? text, {
    Key? key,
    TextStyle style = const TextStyle(),
    NikuStrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    TextHeightBehavior? textHeightBehavior,
  }) =>
      NikuText(
        text,
        key: key,
        style: style.asNiku..labelSmall,
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
      );
  NikuText get self => this;

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

    $parent..$merge(v.$parent);
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
      )..$parent.$merge($parent);

  widget(context) {
    if (style?.themeBuilder == null) return _widget;

    final theme = style!.themeBuilder!(context);
    if (theme == null) return _widget;

    final mergedTheme = theme.asNiku..apply = this.style;

    return Text(
      text ?? "",
      key: key,
      style: mergedTheme.value,
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

  Widget get _widget => Text(
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

extension NikuTextTransformType on NikuText {
  NikuTextSpan get span => NikuTextSpan(
        text,
        key: key,
        style: style,
        semanticsLabel: semanticsLabel,
        locale: locale,
      );

  NikuRichText get rich => NikuRichText(
        NikuTextSpan(text ?? ""),
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
      );

  NikuSelectableText get select => NikuSelectableText(
        text,
        key: key,
        style: style,
        strutStyle: strutStyle,
        textAlign: textAlign,
        textDirection: textDirection,
        textScaleFactor: textScaleFactor,
        maxLines: maxLines,
        textWidthBasis: textWidthBasis,
        textHeightBehavior: textHeightBehavior,
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
