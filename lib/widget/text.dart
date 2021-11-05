import 'package:flutter/material.dart';

import '../objects/objects.dart';
import '../mixins/mixins.dart';

// ignore: must_be_immutable
class NikuText extends StatelessWidget with TextAlignMixins {
  String? text;

  NikuTextStyle? style;
  StrutStyle? strutStyle;
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

  set createStyle(NikuTextStyle Function(NikuTextStyle) callback) {
    style = callback(NikuTextStyle());
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
  build(context) {
    return Text(
      this.text ?? "",
      style: this.style?.value,
      strutStyle: this.strutStyle,
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
        strutStyle: this.strutStyle,
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
