// ignore_for_file: must_be_immutable
import 'dart:ui' as ui;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../macros/macros.dart';
import '../objects/objects.dart';

class NikuTextSpan
    with
        ApplyTextMacro,
        ApplyStrutStyleMacro,
        MapTextStyleMacro,
        TextAlignMacro,
        TextDirectionMacro,
        TextBaselineMacro {
  String? text;
  List<NikuTextSpan>? children;
  NikuTextStyle? style;
  GestureRecognizer? recognizer;
  MouseCursor mouseCursor;
  PointerEnterEventListener? onEnter;
  PointerExitEventListener? onExit;
  String? semanticsLabel;
  ui.Locale? locale;
  bool? spellOut;

  NikuTextSpan(
    this.text, {
    Key? key,
    this.children,
    this.style,
    this.recognizer,
    MouseCursor? mouseCursor,
    this.onEnter,
    this.onExit,
    this.semanticsLabel,
    this.locale,
    this.spellOut,
  })  : mouseCursor = mouseCursor ??
            (recognizer == null ? MouseCursor.defer : SystemMouseCursors.click),
        assert(!(text == null && semanticsLabel != null));

  NikuTextSpan get self => this;

  set apply(NikuTextSpan? v) {
    if (v == null) return;

    if (style == null && v.style != null) style = NikuTextStyle();
    if (strutStyle == null && v.strutStyle != null)
      strutStyle = NikuStrutStyle();

    style!.apply = v.style ?? style;

    text = v.text ?? text;
    children = v.children ?? children;
    recognizer = v.recognizer ?? recognizer;
    mouseCursor = v.mouseCursor;
    onEnter = v.onEnter ?? onEnter;
    onExit = v.onExit ?? onExit;
    semanticsLabel = v.semanticsLabel ?? semanticsLabel;
    locale = v.locale ?? locale;
    spellOut = v.spellOut ?? spellOut;
  }

  TextSpan get value => TextSpan(
        text: text,
        children: children?.map((v) => v.value).toList(growable: false),
        recognizer: recognizer,
        style: style?.value,
        mouseCursor: mouseCursor,
        onEnter: onEnter,
        onExit: onExit,
        semanticsLabel: semanticsLabel,
        locale: locale,
        spellOut: spellOut,
      );

  NikuTextSpan get copied => NikuTextSpan(
        text,
        children: children,
        recognizer: recognizer,
        mouseCursor: mouseCursor,
        onEnter: onEnter,
        onExit: onExit,
        semanticsLabel: semanticsLabel,
        locale: locale,
        spellOut: spellOut,
      );
}
